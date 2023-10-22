create PROCEDURE [dbo].[exam_answer]
    @exam_ID INT,
    @st_ID  int,
	@q_ID int, 
	@answer varchar(300)
AS
BEGIN
declare @std_name varchar(50)
set @std_name = 
			(select Student.Fname+' '+student.Lname from Student 
			where Student.St_SSN = @st_ID)
    BEGIN TRY
        IF (@exam_ID IS NULL OR @st_ID IS NULL OR @q_ID IS NULL )
            RAISERROR('exam_ID, this data are required', 16, 1)
        ELSE
            -- Insert the answers into the answers table
            INSERT INTO Student_Answer(Exam_ID,St_SSN,Ques_ID,Answer)
            VALUES (@exam_ID,@st_ID,@q_ID,@answer)

    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000);
        DECLARE @ErrorSeverity INT;
        DECLARE @ErrorState INT;

        SELECT @ErrorMessage = ERROR_MESSAGE(),
               @ErrorSeverity = ERROR_SEVERITY(),
               @ErrorState = ERROR_STATE();

        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;
GO