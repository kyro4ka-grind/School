use Schoool

insert into Subjectt(_subjectName)
values ('Math'),
	   ('Rus'),
	   ('Lit'),
	   ('Chemistry')

insert into Groupp(_groupNum, _timetable, _subjectList)
values ('6a', '0:0,1,2;1:0,0,0;2:1,1,1;3:2,2,2;4:2,1,2;5:;', '0,1,2')

insert into Task(_task, _idSub, _group)
values ('��������� �������� ����� ����� ��� �������� ������������ ��������� �������', 0, '6a'),
	   ('�������� ��������� �� ����: "��� �� ������ ���� ����� 200 ���"', 1, '6a'),
	   ('������� �������� ����� � ���', 2, '6a')

--5 ������� ������� ������
insert into Student(_name, _surname, _phoneNum, _pasw, _group, _marks)
values ('Vasian', 'Putin', 88005553535, '123', '6a', '0:123;1:454;2:555;')

insert into Teacher(_name, _surname, _phoneNum, _pasw, _subject)
values ('Iosiph', 'Stalin', 88005555555, '123', '�������, ����������')

insert into Administrator(_name, _surname, _phoneNum, _pasw)
values ('Ahmed', 'Johomgirovich', 88888888888, '228')

--Get all information
use Schoool

select * from Student
select * from Teacher
select * from Administrator
select * from Groupp
select * from Subjectt
select * from Task