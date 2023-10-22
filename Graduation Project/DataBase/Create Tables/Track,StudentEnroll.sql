Create Table Track
(
	Track_ID int ,
	Track_name varchar(30) Not Null,
	Mng_SSN varchar(30),
	Mng_Hiring_Date date,

Constraint Track_PK Primary Key (Track_ID),
Constraint Track_Instructor_FK Foreign Key (Mng_SSN)
References Instructor (Ins_SSN)
)


Create Table StudentEnroll
(
	St_SSN varchar(30),
	Branch_ID int Not Null,
	Track_ID int Not Null,
	Intake_ID int Not Null,
	Start_Date date Default Getdate(),
	End_Date date,

Constraint StuedntEnroll_PK Primary Key (St_SSN,Start_Date),
Constraint StuedntEnroll_Student_FK Foreign Key (St_SSN)
References Student (St_SSN),
Constraint StuedntEnroll_Branch_FK Foreign Key (Branch_ID)
References Branch (Branch_ID),
Constraint StuedntEnroll_Track_FK Foreign Key (Track_ID)
References Track (Track_ID),
Constraint StuedntEnroll_Intake_FK Foreign Key (Intake_ID)
References Intake (Intake_Num),
)

