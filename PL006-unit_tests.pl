/**
author: miltonwater
run: swipl -q -f PL006-unit_tests.pl
date: 20261108
client: CSC301 (Fall2026)
subject: Fundamentals of Program Languages
title: unit tests
hashtag: member, feature
description: defines relationship rules
libs:
section: declarative logic
group: class or function or module or script or test or main or snip
topics: structures, methods, print, math
version: 0.0.1 (v001)
url: https://www.swi-prolog.org/pldoc/doc_for?object=section%28%27packages%2Fplunit.html%27%29
BACKLOG:

shortcuts:
%dcg generates ${1:clause} --> ${0:body}.
clause --&gt; body.
%rule generates ${1:functor_name}(${2:argument}) :-\n\t${0:%% body}
rule --&gt; body.
%face generates ${1:functor_name}(${2:argument}).
face --&gt; body.
*/



woman(pam).
woman(liz).
woman(ann).
woman(pat).
woman(susan).
woman(kathy).
woman(andrea).
man(tom).
man(bob).
man(jim).
man(bill).
man(rick).
man(joe).
man(whitey).
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
parent(bill,joe).
parent(kathy,joe).
parent(kathy,andrea).

mother(Kathy,Andrea) :- woman(Kathy),parent(Kathy,Andrea).

grandparent(Whitey, Rick) :-
    parent(Whitey, Susan),
    parent(Susan, Rick).

descendent(D, A):- parent(A, D).
descendent(D, P):- parent(A, P), descendent(D, P).