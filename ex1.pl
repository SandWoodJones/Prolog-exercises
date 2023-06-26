hometown(paco, granada).
hometown(saramago, azinhaga).

city(granada, spain).
city(azinhaga, portugal).

spanish(X) :-
    hometown(X, Y),
    city(Y, spain).

/** <examples>
?- spanish(X).
*/
