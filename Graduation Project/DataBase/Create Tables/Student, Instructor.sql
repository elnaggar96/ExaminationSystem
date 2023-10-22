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
Constraint
)