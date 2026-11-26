parent(john,mary). parent(mary,sam). parent(john,paul). parent(susan,mary).
father(X,Y) :- parent(X,Y), male(X).
male(john). male(paul). male(sam).
grandparent(X,Z) :- parent(X,Y), parent(Y,Z).
% Query: ?- grandparent(john, sam). true.
