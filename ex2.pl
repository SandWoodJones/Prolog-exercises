route(a, b, 3).
route(a, d, 5).
route(a, c, 4).
route(b, d, 2).
route(c, d, 4).
route(c, f, 5).
route(d, e, 2).
route(e, f, 2).

linked(X, Y, Z) :- route(X, Y, Z) ; route(Y, X, Z).

add(X, Y, Z) :- Z is X + Y.

cost(X, Y, L) :- path_cost(X, Y, [], L).

path_cost(X, X, Visited, 0) :-
    \+ member(X, Visited).
path_cost(X, Y, Visited, L) :-
    \+ member(X, Visited),
    linked(X, Z, Cost),
    path_cost(Z, Y, [X | Visited], Remaining),
    add(Cost, Remaining, L).

/** <examples>
?- cost(a, e, L).
?- cost(a, f, L).
?- cost(b, e, L).
?- cost(b, f, L).
?- cost(b, c, L).
?- cost(c, e, L).
?- cost(d, f, L).
?- cost(X, Y, 8).
?- cost(X, Y, 10).
?- cost(X, Y, 12).
*/
