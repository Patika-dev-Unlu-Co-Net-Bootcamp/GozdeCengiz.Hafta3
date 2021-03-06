USE [patika]
GO
/****** Object:  Table [dbo].[Participant]    Script Date: 30.01.2022 22:03:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participant](
	[ParticipantId] [int] IDENTITY(1,1) NOT NULL,
	[AssistantId] [int] NULL,
	[CourseId] [int] NULL,
	[StudentId] [int] NULL,
 CONSTRAINT [PK_Participant] PRIMARY KEY CLUSTERED 
(
	[ParticipantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Participant]  WITH CHECK ADD  CONSTRAINT [FK_Participant_Assistant] FOREIGN KEY([AssistantId])
REFERENCES [dbo].[Assistant] ([AssistantId])
GO
ALTER TABLE [dbo].[Participant] CHECK CONSTRAINT [FK_Participant_Assistant]
GO
ALTER TABLE [dbo].[Participant]  WITH CHECK ADD  CONSTRAINT [FK_Participant_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[Participant] CHECK CONSTRAINT [FK_Participant_Course]
GO
ALTER TABLE [dbo].[Participant]  WITH CHECK ADD  CONSTRAINT [FK_Participant_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[Participant] CHECK CONSTRAINT [FK_Participant_Student]
GO
