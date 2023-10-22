Create Procedure StudentINf @Track INT
As
Begin
	Begin Try
		Select S.* 
		From student S INNER JOIN [Student Enroll] SE
		ON S.St_SSN = SE.St_SSN
		Where SE.Track_ID = @Track
	End Try

	Begin Catch
		Select 'The Track ID Is Not Exist'
	End Catch
End;