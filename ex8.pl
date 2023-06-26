size([], 0).
size([_ | R], N) :-
    size(R, N1),
    N is N1 + 1.

loop :- repeat,
    write('Enter a numerical list or <exit>'), nl,
    read(X),
    (X=exit, ! ; size(X, Y), write(Y), nl, fail).