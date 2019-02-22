! Copyright (C) 2018 Craig Allen.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test rosalind.tier4.iprb kernel math.functions ;
IN: rosalind.tier4.iprb.tests

{ 0.78333 } [ 2 2 2 get-total dominant-allele-prob 0.00001 ] unit-test~
