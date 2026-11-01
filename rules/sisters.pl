
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% Queries to try:
% ?- parent(tom, X).
% ?- grandparent(tom, ann).
% ?- grandparent(X, jim).