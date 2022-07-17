
create table Assessment(
	[AssId] [nvarchar](50)  NOT NULL primary key,
	[Name] [nvarchar](50) NOT NULL,
	[Weight] [float] NOT NULL,
	[SubjectId] [nvarchar](50) not NULL,
 );

create table AssesmentMark(
 	[StudentId] [nvarchar](50)  NOT NULL,
	[AssId] [nvarchar](50) NOT NULL,
	[Mark] [FLOAT]  not NULL
	constraint fk_Assessment foreign key (AssId) REFERENCES Assessment(AssId),
	constraint fk_Student foreign key (StudentId) references Student(StudentId),
	CONSTRAINT  pk_AssesmentMark primary key(StudentId,AssId)
);

create table Teach
(
	[InstructorId] [nvarchar](50) NOT NULL,
	[GroupId] [nvarchar](50) not NULL,
	CONSTRAINT  pk_Teach primary key(InstructorId,GroupId),
	constraint fk_Instructor foreign key (InstructorId) references [Instructor] (InstructorId),
	constraint fk_Group foreign key (GroupId) references [Group] (GroupId),
	
);

CREATE TABLE [Study](
	StudentId  [nvarchar](50) not null foreign key references Student(StudentId),
	[GroupId] [nvarchar](50) not null foreign key references [Group](GroupId),
	CONSTRAINT  pk_Study primary key(StudentId,GroupId)
);

create table [Group]
(
	[GroupId] [nvarchar](50)  NOT NULL primary key,
	[SubjectId] [nvarchar](50) NOT NULL,
	[SemesterId] [nvarchar](50) NOT NULL,
	[GroupCode] [nvarchar](50) not NULL,
	constraint fk_Subject foreign key (SubjectId) references [Subject] (SubjectId),
	constraint fk_Semester foreign key (SemesterId) references [Semester] (SemesterId)
);

create table Instructor (
	[InstructorId] [nvarchar](50)  NOT NULL primary key,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Gender] [bit] NOT NULL,
);

CREATE TABLE [Semester](
	[SemesterId] [nvarchar](50)  NOT NULL primary key,
	[SemesterName] [nvarchar](50) not NULL,
	[StartDate] [date] not NULL,
	[EndDate] [date] not NULL,
);

 CREATE TABLE [Student](
	[StudentId]  [nvarchar](50) NOT NULL primary key,
	[Dob] [date] not NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Gender] [bit] not NULL,
	
);


Create table [Subject]
(
	[SubjectId] [nvarchar](50)  NOT NULL primary key,
	[SubjectName] [nvarchar](50) not NULL,
	Slot int not null
);
