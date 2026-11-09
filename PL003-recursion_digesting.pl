/**
author: miltonwater
run: swipl -q -f PL003-recursion_digesting.pl
date: 20261108
client: CSC301 (Fall2026)
subject: Fundamentals of Program Languages
title: digesting
hashtag: member, feature
description: defines relationship rules
libs:
section: declarative logic
group: class or function or module or script or test or main or snip
topics: structures, methods, print, math
version: 0.0.1 (v001)
url: https://www.swi-prolog.org/pldoc/doc_for?object=manual
BACKLOG:

shortcuts:
%dcg generates ${1:clause} --> ${0:body}.
clause --&gt; body.
%rule generates ${1:functor_name}(${2:argument}) :-\n\t${0:%% body}
rule --&gt; body.
%face generates ${1:functor_name}(${2:argument}).
face --&gt; body.
*/


/** <examples>
?-is_digesting(stork,mosquito).
?-just_ate(stork,mosquito).
?- just_ate(stork,Z),
is_digesting(Z,mosquito).
?- just_ate(stork,Z).
?- is_digesting(Z,mosquito).
?- just_ate(stork,frog).
?- is_digesting(frog,mosquito).
?- just_ate(frog,mosquito).
*/

is_digesting(X,Y) :- just_ate(X,Y).
is_digesting(X,Y) :- just_ate(X,Z), is_digesting(Z,Y).
just_ate(mosquito,blood(john)).
just_ate(frog,mosquito).
just_ate(stork,frog).
