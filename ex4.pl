aggregate([], [], []).
aggregate([X | XB], [Y | YB], [X, Y | Z]) :-
    aggregate(XB, YB, Z).

/** <examples>
?- aggregate([a, b, c], [1, 2, 3], X).
*/
