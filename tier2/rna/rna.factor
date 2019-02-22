! Copyright (C) 2018 Your name.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs ;
IN: rosalind.tier1.rna

: transcribe-rna ( string -- string ) { { CHAR: T CHAR: U } } substitute ;
