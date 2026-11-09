---
### quarto qmd header ###
title: "Getting Started - Prolog && Asteroid"
author: "miltonwater"
date: today
format: 
  html: 
    toc: true
    toc-location: left
    self-contained: true
    theme: cosmo

output-dir: _output
code-fold: true
freeze: auto
editor: 
  source: 
    wrap: 72
# engine: knitr
# knitr: true
engine: jupyter
jupyter: python3
---
woman(pam).
woman(liz).
woman(ann).
woman(pat).
woman(susan).

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



append([2,4],[1,3,5],WHOLE).

last([A|L],E):-last(L,E).

append([H|T],List,[H|Result]):-
    append(T,List,Result).



append(First, Second, Combined):-
    First=[H|T],
    Combined = [H|Result] ,
    append(T, Second, Result).

mother(X,Y) :- woman(X),parent(X,Y).

descendent(D, A):- parent(A, D).
descendent(D, P):- parent(A, P), descendent(D, P).

halve([],[],[]).
halve([X],[X],[]).
halve([H|T],[H|Odds],Evens):- halve(T, Evens, Odds).

halve([1,2,3,4,5], Odds, Evens).
halve(Whole,[1,3,5],[2,4]).

len([],0).
len(List,Length):-List=[], Length is 0.
len([_|Tail], Length):-
    len(T,LengthOfTail), Length is LengthOfTail + 1).

%descendent(D, A):- parent(P, D), parent(P, A).
%
%descendent(jim,A).
%descendent(pat,A).

%[A,B|C] = [1,2,3,4,5]

%uncomment if you want to be able to find solutions to firstCousin/2
%parent(liz,cuz).
