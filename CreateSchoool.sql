use Schoool

create table Teacher
(
	_name nvarchar(20),
	_surname nvarchar(20),
	_phoneNum bigint,
	_pasw nvarchar(20),
	_subject nvarchar(50)

	primary key(_phoneNum)
)

create table Administrator
(
	_name nvarchar(20),
	_surname nvarchar(20),
	_phoneNum bigint,
	_pasw nvarchar(20)

	primary key(_phoneNum)
)

create table Groupp
(
	_groupNum nvarchar(6),
	_timetable nvarchar(256),
	_subjectList varchar(120)

	primary key(_groupNum)
)

create table Student
(
	_id int identity(0,1),
	_name nvarchar(20),
	_surname nvarchar(20),
	_phoneNum bigint,
	_pasw nvarchar(20),
	_group nvarchar(6),
	_marks nvarchar(1024)

	primary key(_phoneNum)
	foreign key(_group) references Groupp(_groupNum)
)

create table Subjectt
(
	_id int identity(0,1),
	_subjectName nvarchar(20)

	primary key(_id)
)

create table Task
(
	_id int identity(0,1),
	_task nvarchar(1024),
	_idSub int,
	_group nvarchar(6)

	primary key(_id)
	foreign key(_idSub) references Subjectt(_id),
	foreign key(_group) references Groupp(_groupNum)
)