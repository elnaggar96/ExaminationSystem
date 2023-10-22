Create Table Student
(
	St_SSN varchar(30) Primary Key,
	Fname varchar(20) Not Null,
	Lname varchar(20) Not Null,
	Gender varchar(5) Not Null,
	Faculty varchar(50) Not Null,
	Grad_Year int Not Null,
	City varchar(30) Not Null,
	Email varchar(50) Not Null,
	Age int Not Null,
	Phone varchar(20) Not Null,
	Pass varchar(30) Not Null,
)

Create Table Instructor
(
	Ins_SSN varchar(30) Primary Key,
	Fname varchar(20) Not Null,
	Lname varchar(20) Not Null,
	Gender varchar(5) Not Null,
	Job_Tittle varchar(50) Not Null,
	Salary int Not Null,
	StartDate Date default Getdate(),
	City varchar(30) Not Null,
	Email varchar(50) Not Null,
	Age int Not Null,
	Phone varchar(20) Not Null,
	Pass varchar(30) Not Null,
)
