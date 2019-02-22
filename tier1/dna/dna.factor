! Copyright (C) 2018 Your name.
! See http://factorcode.org/license.txt for BSD license.
USING: kernel sequences combinators math math.parser ;
IN: dna

<PRIVATE
: increment-nth ( array pos -- ) swap 2dup nth 1 + -rot set-nth ;
: increment-char-pos ( array char -- array' )
    { { CHAR: A [ [ 0 increment-nth ] keep ] }
      { CHAR: C [ [ 1 increment-nth ] keep ] }
      { CHAR: G [ [ 2 increment-nth ] keep ] }
      { CHAR: T [ [ 3 increment-nth ] keep ] } } case  ;
PRIVATE>

: count-nucs ( string -- array ) { 0 0 0 0 } clone [ increment-char-pos ] reduce ;
: format-nucs ( string -- string ) count-nucs [ number>string ] map " " join ;
