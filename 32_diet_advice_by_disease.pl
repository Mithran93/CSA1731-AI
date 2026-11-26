avoid(diabetes, sugary_foods). avoid(hypertension, high_salt_foods).
prefer(diabetes, high_fiber_foods). prefer(hypertension, fruits_and_vegetables).
diet_tip(Disease, avoid(Food)) :- avoid(Disease,Food).
diet_tip(Disease, prefer(Food)) :- prefer(Disease,Food).
% Query: ?- diet_tip(diabetes, Tip).  (General educational example.)
