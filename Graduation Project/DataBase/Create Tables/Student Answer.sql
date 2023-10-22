Create Table StudentAnswer
(
	St_SSN varchar(30),
	Exam_ID int,
	Ques_ID int,
	Point int check (Point in (1,2)),
	Answer varchar(500),

Constraint StudentAnswer_PK Primary Key (St_SSN,Exam_ID,Ques_ID),
Constraint StudentAnswer_Studen_FK Foreign Key (St_SSN)
References Student (St_SSN),
Constraint StudentAnswer_Exam_FK Foreign Key (Exam_ID)
References Exam (Exam_ID),
Constraint StudentAnswer_Ques_FK Foreign Key (Ques_ID)
References Question (Ques_ID)
)