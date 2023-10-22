Create Procedure StudentGrade @St_SSN INT

As
Begin
	Select CONCAT (Fname,' ',Lname) As 'Student' ,Course_Name As 'Course',Concat (Sum(Grade), ' Out Of 20') As 'Point'
	From student S Inner Join Student_Answer SA
	ON S.St_SSN = SA.St_SSN Inner Join Exam E 
	ON SA.Exam_ID = E.Exam_ID Inner Join Course C
	ON E.Course_ID = C.Course_ID
	Where SA.St_SSN = @St_SSN
	Group by CONCAT (Fname,' ',Lname),Course_Name
End	

Exec StudentGrade 111098881