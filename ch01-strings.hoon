::  ||
::  || 1. Strings
::  ||
::
::  Introduction
::
=/  tep/tape  "\\n"                                     ::< two chars, \ and n
=/  tep/tape  "\0a"                                     ::< a "newline" char
=/  tep/tape  "Jon \"Maddog\" Orwant"                   ::< literal doqs, a tape
::
=/  cor/cord  '\0a'                                     ::< a "newline" char
=/  cor/cord  'Jon \'Maddog\' Orwant'                   ::< literal soqs, a cord
::
=/  tep/tape  """
              This is a multiline tape (a list of
              characters, (list @tD)) enclosed in
              triple "doq"'s ('"').
              """
=/  cor/cord  'This is a multiline cord (an atom of \
              /aura @t) enclosed in an opening "fas" \
              /("/") and a closing "bas" ("\\") per \
              /additional line and terminated by a \
              /closing "soq" ("\'").'
::
::  Accessing Substrings
::
%.  ["A tape noun." 4 2]
|=  {tep/tape off/@ud cot/@ud}                          ::< tape, offset, count
~&  newstring+(swag [off cot] tep)]
(swag [off cot] tep)
::
%.  ["A tape noun." 4]
|=  {tep/tape off/@ud}                                  ::< tape, offset
~&  newtail+(slag off tep)]
(slag off tep)
::
%.  "This is a larger tape noun."
|=  tep/tape
^-  (qual tape tape tape tape)
:^    (scag 5 tep)                                      ::< get a 5-char tape
    (swag [8 8] tep)                                    ::< skip 3, 8-char tape
  (swag [16 8] tep)                                     ::< 8-char tape
(slag 24 tep)                                           ::< rest
::
%.  "This is a larger tape noun."
|=  tep/tape                                            ::< split at 5-char pts.
|-  ^-  wall
?:  (gte 5 (lent tep))
  [tep ~]
[(scag 5 tep) $(tep (slag 5 tep))]
::
%.  "This is a larger tape noun"
|=  tep/tape                                            ::< chop into chars
|-  ^-  wall
?~  tep  ~
[(trip i.tep) $(tep t.tep)]
::
%.  "This is what you have"
|=  tep/tape
^-  $~
=/  first/tape  (swag [0 1] tep)                        ::< "T"
=/  start/tape  (swag [5 2] tep)                        ::< "is"
=/  rest/tape   (slag 13 tep)                           ::< "you have"
=/  last/tape   (slag (dec (lent tep)) tep)             ::< "e"
=/  end/tape    (slag (sub (lent tep) 4) tep)           ::< "have"
=/  piece/tape  (swag [(sub (lent tep) 8) 3] tep)       ::< "you"
~&  :*  first+first
        start+start
        rest+rest
        last+last
        end+end
        piece+piece
    ==
~&  tep+tep
~
::
%.  "This is what you have"
|=  tep/tape
^-  tape
=.  tep                                                 ::< "is" to "wasn't"
  (weld (scag 5 tep) (weld "wasn't" (slag 7 tep)))
~&  tep
=.  tep                                                 ::< replace last 12 char
  (weld (scag (sub (lent tep) 12) tep) "ondrous")
~&  tep
=.  tep  ?~(tep ~ t.tep)                                ::< delete first char
~&  tep
=.  tep  (scag (sub (lent tep) 10) tep)                 ::< delete last 10 chars
tep
::
::  Establishing a Default Value
::
:: setting b to a default value
=/  b/tape  "default"
=.  b  ?:(con b "alternative")
::
:: if b is null (an empty tape) then set to "default", else retain value
=/  b/tape  ?~(b "default" b)
::
:: use b if b is true, otherwise use c
=/  a  ?:(b b c)                                        :: b must be loobean
::
:: set x to y unless x is already true
=/  x  ?:(x x y)
::
:: to get ship name in apps (not gens), use:
=/  ship/@p  our
::
:: Exchanging Values Without Using Temporary Variables
::
::
=+  [v1=v2 v2=v1]
::
:: DON'T DO THIS:
=/  tem  a
=/  a  b
=/  b  tem
::
:: Swap two values:
=/  a/tape  "alpha"    :: initialize a and b as tapes (strings)
=/  b/tape  "omega"
=+  [a=b b=a]          :: swap values
::
:: Swap three values:
=/  fir/tape  "January"
=/  sec/tape  "March"
=/  tir/tape  "August"
=+  [fir=sec sec=tir tir=fir]
