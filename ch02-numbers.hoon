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
