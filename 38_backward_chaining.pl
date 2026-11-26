% Backward chaining through Horn-style rules.
rule(mortal(X), [human(X)]).
human(socrates).
prove(human(X)) :- human(X).
prove(mortal(X)) :- rule(mortal(X), Goals), prove_all(Goals), human(X).
prove_all([]).
prove_all([G|Gs]) :- prove(G), prove_all(Gs).
% Query: ?- prove(mortal(socrates)). true.
