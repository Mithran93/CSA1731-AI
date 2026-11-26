% Sum integers from 1 to N.
sum_to(0, 0) :- !.
sum_to(N, S) :- N > 0, N1 is N-1, sum_to(N1, S1), S is S1+N.
% Query: ?- sum_to(5, S).  Result: S = 15.
