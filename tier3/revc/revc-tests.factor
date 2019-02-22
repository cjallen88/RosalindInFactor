! Copyright (C) 2018 Craig Allen.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test rosalind.tier3.revc ;
IN: rosalind.tier3.revc.tests

{ "ACCGGGTTTT" } [ "AAAACCCGGT" reverse-compliment ] unit-test
