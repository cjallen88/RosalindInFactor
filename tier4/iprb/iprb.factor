! Copyright (C) 2018 Craig Allen.
! See http://factorcode.org/license.txt for BSD license.
USING: kernel locals math make sequences splitting words ;
IN: rosalind.tier4.iprb

: get-total ( n n n -- n n n n ) 3dup + + ;
:: dominant-allele-prob ( hd hz hr total -- prob )
    [ hd hd 1 - * ,
      hd hz * ,
      hd hr * ,
      hz hd * ,
      hz hz 1 - * 0.75 * ,
      hz hr * 0.5 * ,
      hr hd * ,
      hr hz * 0.5 * , ]
    { } make 0 [ + ] reduce total / total 1 - / ;
    
