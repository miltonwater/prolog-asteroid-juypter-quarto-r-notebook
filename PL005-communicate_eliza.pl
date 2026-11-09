/**
author: miltonwater
run: swipl -q -f PL005-communicate_eliza.pl
date: 20261108
client: CSC301 (Fall2026)
subject: Fundamentals of Program Languages
title: communicate between two programs
hashtag: member, feature
description: defines relationship rules
libs:
section: declarative logic
group: class or function or module or script or test or main or snip
topics: structures, methods, print, math
version: 0.0.1 (v001)
url: https://www.swi-prolog.org/pldoc/doc_for?object=section%28%27packages%2Fplunit.html%27%29
BACKLOG:
citation: Lurker answered on Jun 24 2014,
https://stackoverflow.com/questions/24367985/how-to-turn-off-true-and-false-outputs-in-prolog
*/

/** <examples>
?- prompt_user.
?- [i, feel, fine].
?- [you, are, a, computer].
?- [do, you, speak, portuguese].
?- make.
?- write(tom).
?- game.
> take(desk).
> take(chair).
>.
?- write([1,2]).
?- read(X).
?- read(Q).
?- fadd([1,2,3]).
*/


% % the dictionary
% lookup(logic,logik).
% lookup(is,macht).
% lookup(fun,spass).
lookup(you, i).
lookup(i, 'why do you').
lookup(are, 'am not').
lookup(do, 'no, ').
lookup(portuguese, russian).
lookup(A,A):- 
    A \= you,
    A \= i,
    A \= are,
    A \= do,
    A \= portuguese.

console_log([]):-
    nl.

console_log([OutputStr]):-
    write(OutputStr),
    nl.

console_log([OutputStr|Remaining]):-
    write(OutputStr),
    write(' '),
    console_log(Remaining).

prompt_user:-
    nl,
    write('How are you feeling?> '),
    read(UserInput),
    translate(UserInput, ConsoleLog),
    write('Gippity:'),
    console_log(ConsoleLog),
    prompt_user.

% the translation procedure
translate([],[]).
translate(EnglishSaying,GermanSaying):-
    [Word|Remaining]=EnglishSaying,
    lookup(Word,GermanWord),
    translate(Remaining,GermanRemaining),
    GermanSaying=[GermanWord|GermanRemaining].



interact:-
    nl,
    write('gimme a list> '),
    read(X),
    reverse(X,Output),
    write('this is the reverse: '),
    write(Output),
    nl,
    interact.


fadd([ ]).
fadd([ H | T ]) :- I is H + 1, write(I), nl, fadd(T).

member([E|_],E).
member([_|T],E) :- member(T,E).

game :-
    repeat,
    write('> '),
    read(X),
    call(X),
    fail.

take(desk) :- write('This thing is way too heavy for me to carry!'), nl.
take(chair) :- write('This is easier to carry.'), nl.