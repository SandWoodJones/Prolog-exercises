union([], L, L).
union([H | T], L2, R) :-
    member(H, L2), !,
    union(T, L2, R).
union([H | T], L2, [H | R]) :-
    union(T, L2, R).

difference([], _, []). 
difference([H | T], L2, R) :-
    member(H, L2), !,
    difference(T, L2, R).
difference([H | T], L2, [H | R]) :-
    difference(T, L2, R).

/** <examples>
?- union([a, b, c], [1, 2, 3], X).
?- union([a, b, c], [a, b, c], X).
?- difference([1, 2, 3, 4], [2, 3], X).
?- difference([1, 2, 3], [], X).
?- difference([], [1, 2, 3], X).
*/
