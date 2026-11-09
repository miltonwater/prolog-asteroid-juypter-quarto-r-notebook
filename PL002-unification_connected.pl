/**
author: miltonwater
run: swipl -q -f PL002-unification_connected.pl
date: 20261108
client: CSC301 (Fall2026)
subject: Fundamentals of Program Languages
title: connected
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
?-connected(bond_street,Y,L).
?-connected(X,piccadilly_circus,L).
?-connected(X,Y,piccadilly).
?-connected(X,piccadilly_circus,L).
*/

connected(bond_street,oxford_circus,central).
connected(oxford_circus,tottenham_court_road,central).
connected(bond_street,green_park,jubilee).
connected(green_park,charing_cross,jubilee).
connected(green_park,piccadilly_circus,piccadilly).
connected(piccadilly_circus,leicester_square,piccadilly).
connected(green_park,oxford_circus,victoria).
connected(oxford_circus,piccadilly_circus,bakerloo).
connected(piccadilly_circus,charing_cross,bakerloo).
connected(tottenham_court_road,leicester_square,northern).
connected(leicester_square,charing_cross,northern).

