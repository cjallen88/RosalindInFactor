! Copyright (C) 2019 Your name.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test math sequences RosalindInFactor.tier4.gc tools.test RosalindInFactor.tier4.gc.fasta ;
IN: RosalindInFactor.tier4.gc.tests


{ 60.0 } [ 60 100 percent ] unit-test

{ 60.91954022988506 }
[ "CCACCCTCGTGGTATGGCTAGGCATTCAGGAACCGGAGAACGCTTCAGACCAGCCCGGACTGGGAACCTGCGGGCAGTAGGTGGAAT" gc-content ]
unit-test

{ 1 } [ { "a" "c" "b" } [ > ] [ first ] maximize-by-using ] unit-test

{ 0 } [ { 1 2 3 } [ < ] maximize-by ] unit-test

{ T{ strand f
     "Rosalind_0808"
     "CCACCCTCGTGGTATGGCTAGGCATTCAGGAACCGGAGAACGCTTCAGACCAGCCCGGACTGGGAACCTGCGGGCAGTAGGTGGAAT"
   } }
[ V{ T{ strand f
        "Rosalind_6404"
        "CCTGCGGAAGATCGGCACTAGAATAGCCAGAACCGTTTCTCTGAGGCTTCCGGCCTTCCCTCCCACTAATAATTCTGAGG"
      }
     T{ strand f
        "Rosalind_5959"
        "CCATCGGTAGCGCATCCTTAGTCCAATTAAGTCCCTATCCAGGCGCTCCGCCGAAGGTCTATATCCATTTGTCAGCAGACACGC"
      }
     T{ strand f
        "Rosalind_0808"
        "CCACCCTCGTGGTATGGCTAGGCATTCAGGAACCGGAGAACGCTTCAGACCAGCCCGGACTGGGAACCTGCGGGCAGTAGGTGGAAT"
      }
   } max-gc-strand ] unit-test
