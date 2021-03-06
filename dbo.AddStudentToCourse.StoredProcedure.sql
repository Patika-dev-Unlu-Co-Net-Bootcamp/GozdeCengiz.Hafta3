USE [patika]
GO
/****** Object:  StoredProcedure [dbo].[AddStudentToCourse]    Script Date: 30.01.2022 22:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AddStudentToCourse]
(
@asistanId int,
@courseId int,
@studentId int
)
as
begin
declare @start int,@end int, @startWeek int, @endWeek int

select @start = StartWeek, @end = EndWeek from dbo.Course where CourseId = @courseId
select  @startWeek = co.StartWeek, @endWeek = co.EndWeek from Participant as part 
	inner join Course as co 
	on part.CourseId = co.CourseId 
	where StudentId = @studentId

	if(@endWeek is null)
	begin
		insert into Participant Values (@asistanId,@courseId,@studentId)
	end
	else if(@start > @endWeek)
		begin
			insert into Participant Values (@asistanId,@courseId,@studentId)
		end
	else 
		print 'Aynı zamanda course kayıt edilmeeez'
	
end
GO
