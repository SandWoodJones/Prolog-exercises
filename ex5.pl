subtract([H | T], R) :-
    subtract_aux(T, H, R).

subtract_aux([], R, R).
subtract_aux([H | T], A, R) :-
    NA is A - H,
    subtract_aux(T, NA, R).

division([H | T], R) :-
    division_aux(T, H, R).

division_aux([], R, R).
division_aux([H | T], A, R) :-
    NA is A / H,
    division_aux(T, NA, R).

/** <examples>
?- subtract([10, 3], X).
?- division([100, 3], X).
*/
