valid([], _).
valid([X | Y], V) :-
    X = V,
    valid(Y, V).

size([], 0).
size([_ | R], N) :-
    size(R, N1),
    N is N1 + 1.

aNbN(A, B) :-
    valid(A, a),
    valid(B, b),
    size(A, S),
    size(B, S).

/** <examples>
?- aNbN([a, a, a, a], [b, b, b, b]).
?- aNbN([a, a, a, a], [b, b, b]).
?- aNbN([a, c, a, a], [b, b, 5, 4]).
*/
