% Facts/rules and a simple forward-chaining closure.
fact(socrates_is_human).
rule(socrates_is_human, socrates_is_mortal).
known(X, Facts) :- member(X,Facts).
forward(Facts, Closure) :- findall(Y,(rule(X,Y),member(X,Facts),\+member(Y,Facts)),New), (New=[] -> Closure=Facts ; append(Facts,New,More), forward(More,Closure)).
% Query: ?- forward([socrates_is_human], C).
