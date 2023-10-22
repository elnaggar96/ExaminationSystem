Create Table Exam
(
	Exam_ID int , 
	Number_Of_Questions int Not Null,
	Course_ID int,

Constraint Exam_PK Primary Key (Exam_ID),
Constraint Exam_Course_FK Foreign Key (Course_ID)
References Course (Course_ID)
)

Create Table Question
(
	Ques_ID int , 
	Ques varchar(300) Not Null,
	Ques_Type varchar(50) Not Null,
	Answer varchar(300) Not Null,
	Fullmark int default 2,
	Course_ID int,

Constraint Question_PK Primary Key (Ques_ID),
Constraint Question_Course_FK Foreign Key (Course_ID)
References Course (Course_ID)
)

Alter Table ExamQuestions
Add Constraint ExamQuestions_Exam_FK Foreign Key (Exam_ID)
References Exam (Exam_ID)

Alter Table ExamQuestions
Add Constraint ExamQuestions_Question_FK Foreign Key (Ques_ID)
References Question (Ques_ID)

Alter Table QuestionChoices
Add Constraint QuestionChoices_Question_FK Foreign Key (Ques_ID)
References Question (Ques_ID)