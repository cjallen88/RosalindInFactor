! Copyright (C) 2018 Your name.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test rosalind.tier1.rna ;
IN: dna.tests

{ "GAUGGAACUUGACUACGUAAAUU" } [ "GATGGAACTTGACTACGTAAATT" transcribe-rna ] unit-test
