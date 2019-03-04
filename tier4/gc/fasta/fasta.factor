! Copyright (C) 2019 Craig Allen
! See http://factorcode.org/license.txt for BSD license.
USING: kernel sequences strings splitting accessors math generalizations ;
IN: RosalindInFactor.tier4.gc.fasta

TUPLE: strand { name string } { contents string } ;

: new-strand-named ( name -- strand ) strand new swap >>name ;

<PRIVATE

: is-name? ( str -- ? ) first 1string ">" = ;

: change-last ( seq quot -- ) swap dup length 1 - swapd -rot change-nth ; inline

: append-to-last-strand ( str seq -- ) [ [ swap append ] change-contents ] change-last ;

! start a new strand for each > entry, excluding the >.
: process-line ( strands str  -- nextstrands )
    dup is-name?
    [ dupd rest new-strand-named swap push ]
    [ over append-to-last-strand ]
    if ;

PRIVATE>

: read-fasta ( str -- strands ) "\n" split V{ } clone [ process-line ] reduce ;
