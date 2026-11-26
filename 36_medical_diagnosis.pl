symptom(jane, fever). symptom(jane, cough). symptom(jane, body_ache).
diagnosis(P, flu) :- symptom(P, fever), symptom(P, cough), symptom(P, body_ache).
diagnosis(P, cold) :- symptom(P, cough), symptom(P, sneezing), \+ symptom(P, fever).
% Query: ?- diagnosis(jane,D). This is a teaching example, not medical advice.
