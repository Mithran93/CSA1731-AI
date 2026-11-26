% State: state(monkey_position, monkey_has_box, banana_obtained).
move(state(at_door,no,no), push_box, state(under_banana,no,no)).
move(state(under_banana,no,no), climb, state(under_banana,yes,no)).
move(state(under_banana,yes,no), grasp, state(under_banana,yes,yes)).
solve(S,[]) :- S=state(_,_,yes).
solve(S,[A|Rest]) :- move(S,A,S2), solve(S2,Rest).
% Query: ?- solve(state(at_door,no,no), Plan).
