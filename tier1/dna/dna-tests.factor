! Copyright (C) 2018 Your name.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test dna dna.private kernel ;
IN: dna.tests

{ { 1 2 4 }  } [ { 1 2 3 } [ 2 increment-nth ] keep ] unit-test
{ { 1 0 0 0 } } [ { 0 0 0 0 } CHAR: A increment-char-pos ] unit-test
{ "20 12 17 21" } [ "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC" format-nucs ] unit-test
