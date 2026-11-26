% Greedy best-first search using heuristic values.
edge(a,b,1). edge(a,c,4). edge(b,d,2). edge(c,d,1).
heuristic(a,3). heuristic(b,2). heuristic(c,1). heuristic(d,0).
best_first(Start, Goal, Path) :- best([[Start]], Goal, Rev), reverse(Rev, Path).
best([[Goal|Tail]|_], Goal, [Goal|Tail]) :- !.
best([[Node|Tail]|Rest], Goal, Path) :-
    findall([Next,Node|Tail], (edge(Node,Next,_), \+ member(Next,[Node|Tail])), Children),
    append(Rest, Children, Candidates), predsort(compare_path, Candidates, Sorted),
    best(Sorted, Goal, Path).
compare_path(Order, [A|_], [B|_]) :- heuristic(A,HA), heuristic(B,HB), compare(Order,HA,HB).
% Query: ?- best_first(a,d,P). Result: P = [a,c,d].
