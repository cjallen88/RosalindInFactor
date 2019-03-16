! Copyright (C) 2019 Craig Allen
! See http://factorcode.org/license.txt for BSD license.
USING: sequences assocs grouping combinators grouping kernel strings math vectors ;
IN: RosalindInFactor.tier4.prot

: codons>amino ( str -- chr )
    { { [ dup { "UUU" "UUC" } member? ] [ drop CHAR: F ] }
      { [ dup { "CUU" "CUC" "UUA" "CUA" "UUG" "CUG" } member? ] [ drop CHAR: L ] }
      { [ dup { "AUU" "AUC" "AUA" } member? ] [ drop CHAR: I ] }
      { [ dup { "GUU" "GUC" "GUA" "GUG" } member? ] [ drop CHAR: V ] }
      { [ dup { "AUG" } member? ] [ drop CHAR: M ] }
      { [ dup { "UCU" "UCC" "UCA" "UCG" "AGU" "AGC" } member? ] [ drop CHAR: S ] }
      { [ dup { "CCU" "CCC" "CCA" "CCG" } member? ] [ drop CHAR: P ] }
      { [ dup { "ACU" "ACC" "ACA" "ACG" } member? ] [ drop CHAR: T ] }
      { [ dup { "GCU" "GCC" "GCA" "GCG" } member? ] [ drop CHAR: A ] }
      { [ dup { "UAU" "UAC" } member? ] [ drop CHAR: Y ] }
      { [ dup { "CAU" "CAC" } member? ] [ drop CHAR: H ] }
      { [ dup { "AAU" "AAC" } member? ] [ drop CHAR: N ] }
      { [ dup { "GAU" "GAC" } member? ] [ drop CHAR: D ] }
      { [ dup { "CAA" "CAG" } member? ] [ drop CHAR: Q ] }
      { [ dup { "AAA" "AAG" } member? ] [ drop CHAR: K ] }
      { [ dup { "GAA" "GAG" } member? ] [ drop CHAR: E ] }
      { [ dup { "UGU" "UGC" } member? ] [ drop CHAR: C ] }
      { [ dup { "CGU" "CGC" "CGA" "AGA" "CGG" "AGG" } member? ] [ drop CHAR: R ] }
      { [ dup { "GGU" "GGC" "GGA" "GGG" } member? ] [ drop CHAR: G ] }
      { [ dup { "UGG" } member? ] [ drop CHAR: W ] }
      { [ dup { "UAA" "UAG" "UGA" } member? ] [ drop CHAR: . ] }
    } cond ;

: cut-slice3 ( seq -- tail heads ) 3 cut-slice swap >string ;

: rna>protein-rec ( rna prot-acc -- str )
    swap
    { { [ dup length 3 < ] [ drop ] }
      { [ cut-slice3 codons>amino dup CHAR: . = ] [ 2drop ] }
      [ rot ?push rna>protein-rec ]
    } cond ;

: rna>protein ( str -- str ) SBUF" " clone rna>protein-rec >string ;
