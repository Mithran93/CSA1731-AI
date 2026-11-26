% Simple person database: name and date of birth.
person(alice, date(2002,5,14)).
person(bob, date(2001,11,2)).
person(charlie, date(2003,1,9)).
% Query: ?- person(Name, date(2002,5,14)).
% Result: Name = alice.
