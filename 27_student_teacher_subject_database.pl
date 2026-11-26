% Student, teacher and subject-code facts.
teaches(ms_rao, cs101, artificial_intelligence).
teaches(mr_khan, cs102, data_structures).
enrolled(asha, cs101).
enrolled(rahul, cs102).
student_teacher_subject(Student, Teacher, Subject) :- enrolled(Student, Code), teaches(Teacher, Code, Subject).
% Query: ?- student_teacher_subject(asha,T,S).
% Result: T=ms_rao, S=artificial_intelligence.
