Create Table StudentEvaluate
(
	Course_ID int,
	St_SSN varchar(30),
	Ins_SSN varchar(30),
	Evaluation varchar(5),

Constraint StudentEvaluate_PK Primary Key (Course_ID,St_SSN,Evaluation),
Constraint StudentEvaluate_Student_FK Foreign Key (St_SSN)
References Student (St_SSN),
Constraint StudentEvaluate_Course_FK Foreign Key (Course_ID)
References Course (Course_ID),
Constraint StudentEvaluate_Instructor_FK Foreign Key (Ins_SSN)
References Instructor (Ins_SSN)
)
Alter Table StudentEvaluate
Add Constraint Evaluate_ChK Check (Evaluation in ('A','B','C','D','F'))

Create Table Topic
(
	Topic_ID int,
	Topic_Name Varchar(50),
	Course_ID int,

Constraint Topic_PK Primary Key (Topic_ID),
Constraint Topic_Course_FK Foreign Key (Course_ID)
References Course (Course_ID)
)

