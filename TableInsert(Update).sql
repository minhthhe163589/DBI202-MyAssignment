Create database Ass_Dbi202_IA1604
use Ass_Dbi202_IA1604
drop table Assessment
create table Assessment(
	[AssId] [nvarchar](50)  NOT NULL primary key,
	[Name] [nvarchar](50) NOT NULL,
	[Weight] [float] NOT NULL,
	[SubjectId] [nvarchar](50) not NULL ,
	constraint fk_Subject_Ass foreign key (SubjectId) references [Subject](SubjectId),
	
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


--Student
insert into [Student] values (N'HE163589','2002-01-01',N'Truong Minh',N'minhthhe163589@fpt.edu.vn',1)
insert into [Student] values (N'HE163590','2002-11-01',N'Nguyen Vu',N'vunshe163590@fpt.edu.vn',1)
insert into [Student] values (N'HE162312','2002-03-12',N'Luong Hai',N'hailthe162312@fpt.edu.vn',1)
insert into [Student] values (N'HE163211','2002-08-01',N'Phuong Anh',N'anhpnhe163211@fpt.edu.vn',0)
insert into [Student] values (N'HE163511','2002-11-01',N'Tran Anh',N'atnhe163511@fpt.edu.vn',0)
insert into [Student] values (N'HE163597','2002-07-01',N'Huy Duong',N'hdhe163597@fpt.edu.vn',1)
select * from Student

--AssesmentMark
insert into AssesmentMark valueS (N'HE163589', N'ASS1-CSD',7)
insert into AssesmentMark valueS (N'HE163589', N'ASS2-CSD',8)
insert into AssesmentMark valueS (N'HE163589', N'PT1-CSD',6)
insert into AssesmentMark valueS (N'HE163589', N'PT2-CSD',7.5)
insert into AssesmentMark valueS (N'HE163589', N'PE-CSD',5)
insert into AssesmentMark valueS (N'HE163589', N'FE-CSD',7.5)
insert into AssesmentMark valueS (N'HE163589', N'LAB1-DBI',5)
insert into AssesmentMark valueS (N'HE163589', N'LAB2-DBI',6)
insert into AssesmentMark valueS (N'HE163589', N'PT1-DBI',5)
insert into AssesmentMark valueS (N'HE163589', N'PT2-DBI',6)
insert into AssesmentMark valueS (N'HE163589', N'ASS-DBI',7)
insert into AssesmentMark valueS (N'HE163589', N'PE-DBI',5)
insert into AssesmentMark valueS (N'HE163589', N'FE-DBI',4)
insert into AssesmentMark valueS (N'HE163589', N'PAR-JPD',7)
insert into AssesmentMark valueS (N'HE163589', N'MD-JPD',5)
insert into AssesmentMark valueS (N'HE163589', N'PT1-JPD',4)
insert into AssesmentMark valueS (N'HE163589', N'PT2-JPD',8)
insert into AssesmentMark valueS (N'HE163589', N'FE-JPD',5)
insert into AssesmentMark valueS (N'HE163589', N'PE-WED',5)
insert into AssesmentMark valueS (N'HE163589', N'FE-WED',4)
insert into AssesmentMark valueS (N'HE163589', N'PE-NWC',9)
insert into AssesmentMark valueS (N'HE163589', N'FE-NWC',6)

insert into AssesmentMark valueS (N'HE163590', N'ASS1-CSD',5)
insert into AssesmentMark valueS (N'HE163590', N'ASS2-CSD',4)
insert into AssesmentMark valueS (N'HE163590', N'PT1-CSD',6)
insert into AssesmentMark valueS (N'HE163590', N'PT2-CSD',7)
insert into AssesmentMark valueS (N'HE163590', N'PE-CSD',8)
insert into AssesmentMark valueS (N'HE163590', N'FE-CSD',6.5)
insert into AssesmentMark valueS (N'HE163590', N'LAB1-DBI',5.5)
insert into AssesmentMark valueS (N'HE163590', N'LAB2-DBI',6)
insert into AssesmentMark valueS (N'HE163590', N'PT1-DBI',8)
insert into AssesmentMark valueS (N'HE163590', N'PT2-DBI',6)
insert into AssesmentMark valueS (N'HE163590', N'ASS-DBI',7)
insert into AssesmentMark valueS (N'HE163590', N'PE-DBI',9)
insert into AssesmentMark valueS (N'HE163590', N'FE-DBI',4)
insert into AssesmentMark valueS (N'HE163590', N'PAR-JPD',7)
insert into AssesmentMark valueS (N'HE163590', N'MD-JPD',5)
insert into AssesmentMark valueS (N'HE163590', N'PT1-JPD',4)
insert into AssesmentMark valueS (N'HE163590', N'PT2-JPD',8)
insert into AssesmentMark valueS (N'HE163590', N'FE-JPD',5)
insert into AssesmentMark valueS (N'HE163590', N'PE-WED',5)
insert into AssesmentMark valueS (N'HE163590', N'FE-WED',4)
insert into AssesmentMark valueS (N'HE163590', N'PE-NWC',6)
insert into AssesmentMark valueS (N'HE163590', N'FE-NWC',6)

insert into AssesmentMark valueS (N'HE162312', N'ASS1-CSD',3)
insert into AssesmentMark valueS (N'HE162312', N'ASS2-CSD',7)
insert into AssesmentMark valueS (N'HE162312', N'PT1-CSD',8)
insert into AssesmentMark valueS (N'HE162312', N'PT2-CSD',7)
insert into AssesmentMark valueS (N'HE162312', N'PE-CSD',8)
insert into AssesmentMark valueS (N'HE162312', N'FE-CSD',6.5)
insert into AssesmentMark valueS (N'HE162312', N'LAB1-DBI',5.5)
insert into AssesmentMark valueS (N'HE162312', N'LAB2-DBI',6)
insert into AssesmentMark valueS (N'HE162312', N'PT1-DBI',8)
insert into AssesmentMark valueS (N'HE162312', N'PT2-DBI',6)
insert into AssesmentMark valueS (N'HE162312', N'ASS-DBI',4)
insert into AssesmentMark valueS (N'HE162312', N'PE-DBI',9)
insert into AssesmentMark valueS (N'HE162312', N'FE-DBI',4)
insert into AssesmentMark valueS (N'HE162312', N'PAR-JPD',7)
insert into AssesmentMark valueS (N'HE162312', N'MD-JPD',6)
insert into AssesmentMark valueS (N'HE162312', N'PT1-JPD',7)
insert into AssesmentMark valueS (N'HE162312', N'PT2-JPD',8)
insert into AssesmentMark valueS (N'HE162312', N'FE-JPD',8)
insert into AssesmentMark valueS (N'HE162312', N'PE-WED',5)
insert into AssesmentMark valueS (N'HE162312', N'FE-WED',9)
insert into AssesmentMark valueS (N'HE162312', N'PE-NWC',6)
insert into AssesmentMark valueS (N'HE162312', N'FE-NWC',8)

insert into AssesmentMark valueS (N'HE163211', N'ASS1-CSD',8.5)
insert into AssesmentMark valueS (N'HE163211', N'ASS2-CSD',4)
insert into AssesmentMark valueS (N'HE163211', N'PT1-CSD',6)
insert into AssesmentMark valueS (N'HE163211', N'PT2-CSD',7.5)
insert into AssesmentMark valueS (N'HE163211', N'PE-CSD',8)
insert into AssesmentMark valueS (N'HE163211', N'FE-CSD',6.5)
insert into AssesmentMark valueS (N'HE163211', N'LAB1-DBI',4.5)
insert into AssesmentMark valueS (N'HE163211', N'LAB2-DBI',6)
insert into AssesmentMark valueS (N'HE163211', N'PT1-DBI',7)
insert into AssesmentMark valueS (N'HE163211', N'PT2-DBI',6)
insert into AssesmentMark valueS (N'HE163211', N'PE-DBI',10)
insert into AssesmentMark valueS (N'HE163211', N'FE-DBI',4.5)
insert into AssesmentMark valueS (N'HE163211', N'ASS-DBI',5)
insert into AssesmentMark valueS (N'HE163211', N'PAR-JPD',7)
insert into AssesmentMark valueS (N'HE163211', N'MD-JPD',6.5)
insert into AssesmentMark valueS (N'HE163211', N'PT1-JPD',7)
insert into AssesmentMark valueS (N'HE163211', N'PT2-JPD',7.5)
insert into AssesmentMark valueS (N'HE163211', N'FE-JPD',7)
insert into AssesmentMark valueS (N'HE163211', N'PE-WED',5)
insert into AssesmentMark valueS (N'HE163211', N'FE-WED',5)
insert into AssesmentMark valueS (N'HE163211', N'PE-NWC',6)
insert into AssesmentMark valueS (N'HE163211', N'FE-NWC',5)

insert into AssesmentMark valueS (N'HE163511', N'ASS1-CSD',6)
insert into AssesmentMark valueS (N'HE163511', N'ASS2-CSD',7)
insert into AssesmentMark valueS (N'HE163511', N'PT1-CSD',5)
insert into AssesmentMark valueS (N'HE163511', N'PT2-CSD',8.5)
insert into AssesmentMark valueS (N'HE163511', N'PE-CSD',5.5)
insert into AssesmentMark valueS (N'HE163511', N'FE-CSD',7)
insert into AssesmentMark valueS (N'HE163511', N'LAB1-DBI',5.25)
insert into AssesmentMark valueS (N'HE163511', N'LAB2-DBI',6.5)
insert into AssesmentMark valueS (N'HE163511', N'PT1-DBI',8)
insert into AssesmentMark valueS (N'HE163511', N'PT2-DBI',3)
insert into AssesmentMark valueS (N'HE163511', N'ASS-DBI',8)
insert into AssesmentMark valueS (N'HE163511', N'PE-DBI',6)
insert into AssesmentMark valueS (N'HE163511', N'FE-DBI',5)
insert into AssesmentMark valueS (N'HE163511', N'PAR-JPD',7.25)
insert into AssesmentMark valueS (N'HE163511', N'MD-JPD',5.5)
insert into AssesmentMark valueS (N'HE163511', N'PT1-JPD',4)
insert into AssesmentMark valueS (N'HE163511', N'PT2-JPD',7)
insert into AssesmentMark valueS (N'HE163511', N'FE-JPD',5)
insert into AssesmentMark valueS (N'HE163511', N'PE-WED',5.5)
insert into AssesmentMark valueS (N'HE163511', N'FE-WED',4.5)
insert into AssesmentMark valueS (N'HE163511', N'PE-NWC',5)
insert into AssesmentMark valueS (N'HE163511', N'FE-NWC',6)

insert into AssesmentMark valueS (N'HE163597', N'ASS1-CSD',7)
insert into AssesmentMark valueS (N'HE163597', N'ASS2-CSD',5)
insert into AssesmentMark valueS (N'HE163597', N'PT1-CSD',5)
insert into AssesmentMark valueS (N'HE163597', N'PT2-CSD',4)
insert into AssesmentMark valueS (N'HE163597', N'PE-CSD',5.5)
insert into AssesmentMark valueS (N'HE163597', N'FE-CSD',4)
insert into AssesmentMark valueS (N'HE163597', N'LAB1-DBI',6)
insert into AssesmentMark valueS (N'HE163597', N'LAB2-DBI',6.5)
insert into AssesmentMark valueS (N'HE163597', N'PT1-DBI',8.5)
insert into AssesmentMark valueS (N'HE163597', N'PT2-DBI',7)
insert into AssesmentMark valueS (N'HE163597', N'ASS-DBI',7)
insert into AssesmentMark valueS (N'HE163597', N'PE-DBI',6.5)
insert into AssesmentMark valueS (N'HE163597', N'FE-DBI',5)
insert into AssesmentMark valueS (N'HE163597', N'PAR-JPD',7.5)
insert into AssesmentMark valueS (N'HE163597', N'MD-JPD',5.75)
insert into AssesmentMark valueS (N'HE163597', N'PT1-JPD',4.5)
insert into AssesmentMark valueS (N'HE163597', N'PT2-JPD',6.5)
insert into AssesmentMark valueS (N'HE163597', N'FE-JPD',5)
insert into AssesmentMark valueS (N'HE163597', N'PE-WED',5.5)
insert into AssesmentMark valueS (N'HE163597', N'FE-WED',6.5)
insert into AssesmentMark valueS (N'HE163597', N'PE-NWC',5)
insert into AssesmentMark valueS (N'HE163597', N'FE-NWC',6.5)
SELECT * FROM AssesmentMark

--Assesment
INSERT INTO Assessment VALUES(N'ASS1-CSD',N'Assignment1',0.1,N'CSD')
INSERT INTO Assessment VALUES(N'ASS2-CSD',N'Assignment2',0.1,N'CSD')
INSERT INTO Assessment VALUES(N'PT1-CSD',N'Progress Test1',0.1,N'CSD')
INSERT INTO Assessment VALUES(N'PT2-CSD',N'Progress Test2',0.1,N'CSD')
INSERT INTO Assessment VALUES(N'PE-CSD',N'Practice Exam',0.3,N'CSD')
INSERT INTO Assessment VALUES(N'FE-CSD',N'Final Exam',0.3,N'CSD')

INSERT INTO Assessment VALUES(N'LAB1-DBI',N'Lab1',0.05,N'DBI')
INSERT INTO Assessment VALUES(N'LAB2-DBI',N'Lab2',0.05,N'DBI')
INSERT INTO Assessment VALUES(N'PT1-DBI',N'Progress Test1',0.05,N'DBI')
INSERT INTO Assessment VALUES(N'PT2-DBI',N'Progress Test2',0.05,N'DBI')
INSERT INTO Assessment VALUES(N'ASS-DBI',N'Assignment',0.2,N'DBI')
INSERT INTO Assessment VALUES(N'PE-DBI',N'Practice Exam',0.3,N'DBI')
INSERT INTO Assessment VALUES(N'FE-DBI',N'Final Exam',0.3,N'DBI')

INSERT INTO Assessment VALUES(N'PAR-JPD',N'Participation',0.1,N'JPD')
INSERT INTO Assessment VALUES(N'MD-JPD',N'Mid Term',0.3,N'JPD')
INSERT INTO Assessment VALUES(N'PT1-JPD',N'Progress Test1',0.1,N'JPD')
INSERT INTO Assessment VALUES(N'PT2-JPD',N'Progress Test2',0.1,N'JPD')
INSERT INTO Assessment VALUES(N'FE-JPD',N'Final Exam',0.4,N'JPD')

INSERT INTO Assessment VALUES(N'FE-WED',N'Final Exam',0.5,N'WED')
INSERT INTO Assessment VALUES(N'PE-WED',N'Practice Exam',0.5,N'WED')

INSERT INTO Assessment VALUES(N'FE-NWC',N'Final Exam',0.5,N'NWC')
INSERT INTO Assessment VALUES(N'PE-NWC',N'Practice Exam',0.5,N'NWC')
select * from Assessment

--Subject
INSERT INTO [Subject] VALUES(N'WED',N'Wed Design',5)
INSERT INTO [Subject] VALUES(N'NWC',N'Computer Networking',5)
INSERT INTO [Subject] VALUES(N'CSD',N'Data Structures and Algorithms',30)
INSERT INTO [Subject] VALUES(N'DBI',N'Introduce to Databases',29)
INSERT INTO [Subject] VALUES(N'JPD',N'Japanese',30)
SELECT * FROM [Subject]

--Group
--N'SPR22'
insert into [Group] values (N'IA1604_DBI',N'DBI',N'SPR22',N'IA1604')
insert into [Group] values (N'IA1604_JPD',N'JPD',N'SPR22',N'IA1604')
insert into [Group] values (N'IA1604_NWC',N'NWC',N'SPR22',N'IA1604')
insert into [Group] values (N'IA1604_CSD',N'CSD',N'SPR22',N'IA1604')
insert into [Group] values (N'IA1604_WED',N'WED',N'SPR22',N'IA1604')
insert into [Group] values (N'SE1639_DBI',N'DBI',N'SPR22',N'SE1639')
insert into [Group] values (N'SE1639_JPD',N'JPD',N'SPR22',N'SE1639')
insert into [Group] values (N'SE1639_NWC',N'NWC',N'SPR22',N'SE1639')
insert into [Group] values (N'SE1639_CSD',N'CSD',N'SPR22',N'SE1639')
insert into [Group] values (N'SE1639_WED',N'WED',N'SPR22',N'SE1639')
insert into [Group] values (N'SE1640_DBI',N'DBI',N'SPR22',N'SE1640')
insert into [Group] values (N'SE1640_JPD',N'JPD',N'SPR22',N'SE1640')
insert into [Group] values (N'SE1640_NWC',N'NWC',N'SPR22',N'SE1640')
insert into [Group] values (N'SE1640_CSD',N'CSD',N'SPR22',N'SE1640')
insert into [Group] values (N'SE1640_WED',N'WED',N'SPR22',N'SE1640')

SELECT * FROM [Group]

--Introductor
insert into Instructor VALUES (N'Sonnt5',N'Ngo Tung Son',N'sonnt5@fpt.edu,vn',1)
insert into Instructor VALUES (N'Caupd',N'Phan Dang Cau',N'caupd@fpt.edu,vn',1)
insert into Instructor VALUES (N'Tunt57',N'Nguyen Thanh Tu',N'tunt57@fpt.edu,vn',0)
insert into Instructor VALUES (N'Hoaptt8',N'Pham Thi Thanh Hoa',N'hoaptt8@fpt.edu,vn',0)
insert into Instructor VALUES (N'Tientd17',N'Ta Dinh Tien',N'tientd17@fpt.edu,vn',1)
insert into Instructor VALUES (N'Bantq',N'Ban T Q',N'Bantq@fpt.edu,vn',1)
insert into Instructor VALUES (N'Thuyht',N'Hoang Thu Thuy',N'Thuyht@fpt.edu,vn',0)
select*from Instructor

--Study
insert into Study values (N'HE163589',N'IA1604_DBI')
insert into Study values (N'HE163589',N'IA1604_JPD')
insert into Study values (N'HE163589',N'IA1604_NWC')
insert into Study values (N'HE163589',N'IA1604_CSD')
insert into Study values (N'HE163589',N'IA1604_WED')

insert into Study values (N'HE163590',N'SE1639_DBI')
insert into Study values (N'HE163590',N'IA1604_JPD')
insert into Study values (N'HE163590',N'SE1639_NWC')
insert into Study values (N'HE163590',N'IA1604_CSD')
insert into Study values (N'HE163590',N'SE1639_WED')

insert into Study values (N'HE162312',N'SE1639_DBI')
insert into Study values (N'HE162312',N'SE1639_JPD')
insert into Study values (N'HE162312',N'SE1639_NWC')
insert into Study values (N'HE162312',N'SE1639_CSD')
insert into Study values (N'HE162312',N'SE1639_WED')

insert into Study values (N'HE163211',N'IA1604_DBI')
insert into Study values (N'HE163211',N'IA1604_JPD')
insert into Study values (N'HE163211',N'IA1604_NWC')
insert into Study values (N'HE163211',N'IA1604_CSD')
insert into Study values (N'HE163211',N'IA1604_WED')

insert into Study values (N'HE163511',N'SE1640_DBI')
insert into Study values (N'HE163511',N'SE1640_JPD')
insert into Study values (N'HE163511',N'SE1640_NWC')
insert into Study values (N'HE163511',N'SE1640_CSD')
insert into Study values (N'HE163511',N'SE1640_WED')

insert into Study values (N'HE163597',N'SE1640_DBI')
insert into Study values (N'HE163597',N'IA1604_JPD')
insert into Study values (N'HE163597',N'SE1639_NWC')
insert into Study values (N'HE163597',N'IA1604_CSD')
insert into Study values (N'HE163597',N'SE1640_WED')
SELECT*FROM Study

--Teach
insert into Teach values (N'Sonnt5',N'IA1604_DBI')
insert into Teach values (N'Caupd',N'IA1604_NWC')
insert into Teach values (N'Tientd17',N'IA1604_WED')
insert into Teach values (N'Tunt57',N'IA1604_CSD')
insert into Teach values (N'Hoaptt8',N'IA1604_JPD')

insert into Teach values (N'Caupd',N'SE1639_CSD')
insert into Teach values (N'Sonnt5',N'SE1639_DBI')
insert into Teach values (N'Thuyht',N'SE1639_JPD')
insert into Teach values (N'Bantq',N'SE1639_WED')
insert into Teach values (N'Tunt57',N'SE1639_NWC')

insert into Teach values (N'Bantq',N'SE1640_DBI')
insert into Teach values (N'Hoaptt8',N'SE1640_JPD')
insert into Teach values (N'Tientd17',N'SE1640_NWC')
insert into Teach values (N'Caupd',N'SE1640_WED')
insert into Teach values (N'Tunt57',N'SE1640_CSD')
SELECT*FROM Teach

--Sesmester
insert into Semester values (N'SPR22',N'SPRING2022','2022-05-01','2022-08-30')
insert into Semester values (N'Fall21',N'FALL2021','2021-09-01','2022-12-30')
SELECT*FROM Semester