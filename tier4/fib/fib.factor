! Copyright (C) 2019 Your name.
! See http://factorcode.org/license.txt for BSD license.
USING: combinators kernel math memoize ;
IN: fib

MEMO: fib ( children months -- population )
    dup 2 <=
    [ 2drop 1 ]
    [ over swap [ 1 - fib ] [ 2 - fib ] 2bi rot * + ]
    if ;
