Create Table BrunchTracks
(
	Track_ID int,
	Branch_ID int,

Constraint BrunchTracks_PK Primary Key (Track_ID,Branch_ID),
Constraint BrunchTracks_Branch_FK Foreign Key (Branch_ID)
References Branch (Branch_ID),
Constraint BrunchTracks_Track_FK Foreign Key (Track_ID)
References Track (Track_ID)
)

Create Table Ins_Branch
(
	Ins_SSN varchar(30),
	Branch_ID int,

Constraint Ins_Branch_PK Primary Key (Ins_SSN),
Constraint Ins_Branch_Branch_FK Foreign Key (Branch_ID)
References Branch (Branch_ID),
Constraint Ins_Branch_Instructor_FK Foreign Key (Ins_SSN)
References Instructor (Ins_SSN)
)

Create Table Ins_Course
(
	Ins_SSN varchar(30),
	Course_ID int,

Constraint Ins_Course_PK Primary Key (Ins_SSN,Course_ID),
Constraint Ins_Course_Instructor_FK Foreign Key (Ins_SSN)
References Instructor (Ins_SSN),
Constraint Ins_Course_Course_FK Foreign Key (Course_ID)
References Course (Course_ID)
)