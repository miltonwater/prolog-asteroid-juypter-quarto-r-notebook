
/**
author: miltonwater
run: swipl -q -f PL004-lists.pl
date: 20261108
client: CSC301 (Fall2026)
subject: Fundamentals of Program Languages
title: lists
hashtag: member, feature
description: defines relationship rules
libs:
section: declarative logic
group: class or function or module or script or test or main or snip
topics: structures, methods, print, math
version: 0.0.1 (v001)
url: https://www.swi-prolog.org/pldoc/doc_for?object=manual
https://lpn.swi-prolog.org/lpnpage.php?pagetype=html&pageid=lpn-htmlse9
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
?- append([2,4],[1,3,5],WHOLE).
?- last([1,2,3], ELEMENT).
?- halve([1,2,3,4,5], Odds, Evens).
?- halve(Whole,[1,3,5],[2,4]).
?- len([tail_length,start,zero],N).
*/

% last element of a list
last([Element], Element).
last([_|Tail], Element):-
    last(Tail, Element).

% merge two lists into one list
append([],List,List).
% append([H|T],List,[H|Result]):-
%     append(T,List,Result).
append(First, Second, Combined):-
    First=[Head|Tail],
    Combined = [Head|Result] ,
    append(Tail, Second, Result).



halve([], [], []).
halve([Element], [Element], []).
halve([Head|Tail], [Head|Odds], Evens):-
    halve(Tail, Evens, Odds).


len([], 0).
len([_|Tail], Length):-
    len(Tail, LengthOfTail),
    Length is LengthOfTail + 1.
