min([X], X).
min([H | T], M) :- min(T, Tm), (H < Tm -> M=H; M=Tm).

/** <examples>
?- min([1, 3, 5, 12, 7, 6, 0], R).
*/
