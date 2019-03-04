! Copyright (C) 2019 Your name.
! See http://factorcode.org/license.txt for BSD license.
USING: locals kernel sequences arrays sorting strings formatting splitting accessors math generalizations RosalindInFactor.tier4.gc.fasta ;
IN: RosalindInFactor.tier4.gc

: percent ( num denom -- pct ) [ 100 * ] dip /f ;

GENERIC: gc-content ( item -- gc )

M: string gc-content [ [ 1string  { "C" "G" } member? ] filter length ] keep length percent ;

M: strand gc-content contents>> gc-content ;

! similar to common-lisp ITERATE library's MAXIMIZING clause,
! read as maximize-by (comparing quotation) -using (key quotation)
:: maximize-by-using ( seq
                       compquot: ( current-max nextval -- ? )
                       keyquot: ( i -- i' )
                       -- elem )
    seq unclip keyquot call( i -- i' ) :> val! -1 :> index!
    [ swap keyquot call( i -- i' ) dup val compquot call( current-max nextval -- ? )
      [ val! index! ] [ 2drop ] if
    ] each-index index 1 + ; inline

: maximize-by ( seq quot: ( compval -- ? ) -- elem ) [ ] maximize-by-using ; inline

: max-gc-strand ( strands -- strand ) dup [ > ] [ gc-content ] maximize-by-using swap nth ;

: print-strand/gc ( strand -- ) [ name>> ] [ gc-content ] bi "%s\n%.6f" printf ;
