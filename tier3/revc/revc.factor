! Copyright (C) 2018 Craig Allen.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs sequences ;
IN: rosalind.tier3.revc

: reverse-compliment ( str -- str )
    { { CHAR: A CHAR: T }
      { CHAR: T CHAR: A }
      { CHAR: C CHAR: G }
      { CHAR: G CHAR: C }
    } substitute reverse ;
