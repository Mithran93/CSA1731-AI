bird(sparrow). bird(eagle). bird(penguin).
can_fly(X) :- bird(X), \+ flightless(X).
flightless(penguin).
% Queries: ?- can_fly(sparrow). true.  ?- can_fly(penguin). false.
