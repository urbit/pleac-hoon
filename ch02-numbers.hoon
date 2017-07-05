::  ||
::  || 2. Numbers
::  ||
::
::  Checking Whether a String Is a Valid Number
::
%.  'cord'
|=  cor/cord                                            ::< accepts '42'
=/  tep/tape  (trip cor)
|-  ^-  ?
?~  tep
  ~&  "'{tep}' does not have nondigits"
  |
?~  `(unit @ud)`((slat %ud) i.tep)
  ~&  "'{tep}' has nondigits"
  &
$(tep t.tep)
::
%.  'cord'
|=  cor/cord                                            ::< accepts '42'
^-  ?
?~  `(unit @ud)`((slat %ud) cor))
  ~&  """
      '{(trip cor)}' is not an unsigned decimal number
      """
  |
~&  'is an unsigned decimal number'
&
::
%.  'cord'
|=  cor/cord                                            ::< accepts '-4', '--2'
^-  ?
?~  `(unit @sd)`((slat %sd) cor))
  ~&  "'{(trip cor)}' is not a signed decimal number"
  |
~&  "'{(trip cor)}' is a signed decimal number"
&
::
%.  'cord'
|=  cor/cord                                            ::< accepts '.~3.14'
^-  ?
?~  `(unit @rd)`((slat %rd) cor))
  ~&  "'{(trip cor)}' is not a 64-bit IEEE float"
  |
~&  "'{(trip cor)}' is a 64-bit IEEE float"
&
::
:: Comparing Floating-Point Numbers                     ::< XX no decimal sample
::
%.  [.~3.14159265359 .~3.14159265359]                   ::> return %.y if =(a b)
|=  {a/@rd b/@rd}                                       ::< rounded to nearest
^-  ?
(~(equ rd %n) a b)
::
::
%.  [.~3.14159265359 .~3.14159265359]                   ::> return %.y if =(a b)
|=  {a/@rd b/@rd}                                       ::< rounded up
^-  ?
(~(equ rd %u) a b)
::
::
%.  [.~3.14159265359 .~3.14159265359]                   ::> return %.y if =(a b)
|=  {a/@rd b/@rd}                                       ::< rounded down
^-  ?
(~(equ rd %d) a b)
::
::
%.  [.~3.14159265359 .~3.14159265359]                   ::> return %.y if =(a b)
|=  {a/@rd b/@rd}                                       ::< rounded to zero
^-  ?
(~(equ rd %z) a b)
::
%.  536
|=  wage/@ud                                            ::< one week's wage
^-  @rd
=/  week/@ud  (mul 40 wage)
~&  """
    One week's wage is:
    {<(~(div rd %n) (~(sun rd %n) week) .~100)>}
    """
(~(div rd %n) (~(sun rd %n) week) .~100)                ::< $214.40
::
:: Rounding Floating-Point Numbers
::
::
:: Converting Between Binary and Decimal
::
%.  0b11.0110
|=  a/@ub
=/  num/@ud  `@ud`a                                     ::< num is 54
num
::
%.  54
|=  a/@ud
=/  bin/@ub  `@ub`a                                     ::< bin is 0b11.0110
bin
::
:: Operating on a Series of Integers
::
%.  [0 10]
|=  {a/@ud b/@ud}
^-  (list @ud)                                          ::> c set to list nums
=/  c/(list @ud)  (gulf a b)                            ::< a -> b, inclusive
c
::
%.  [0 70]
|=  {a/@ud b/@ud}                                       ::> c set to list nums
=/  c/(list @ud)                                        ::< a -> b, stepsize = 7
  |-  ^-  (list @ud)
  ?:  =(a (add 7 b))
    ~
  [a $(a (add 7 a))]
c
::
%.  ["Infancy" [0 2]]
|=  {tep/tape {a/@ud b/@ud}}
^-  (list $~)
%+  turn  (gulf a b)
|=  a/@ud
~&  "{tep} is: {<a>}"                                   ::< Infancy is: 0 1 2
~
::
%.  ["Toddling" [3 4]]
|=  {tep/tape {a/@ud b/@ud}}
^-  (list $~)
%+  turn  (gulf a b)
|=  a/@ud
~&  "{tep} is: {<a>}"                                   ::< Toddling is: 3 4
~
::
%.  ["Childhood" [5 12]]
|=  {tep/tape {a/@ud b/@ud}}
^-  (list $~)
%+  turn  (gulf a b)
|=  a/@ud
~&  "{tep} is: {<a>}"                                   ::< Childhood is: 5...12
~
::
:: Working with Roman Numerals
::
::
:: Generating Random Numbers
::
