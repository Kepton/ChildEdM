--create database ChildEducationManage;
if not exists(select 1 from syscolumns where id=object_id('Student'))
begin
	create table Student
	(
		id_S varchar(50) primary key,
		age int null,
		name varchar(200) not null,
		phone varchar(20) not null,
		parent varchar(200) null,
		address varchar(200) null
	)
end
if not exists(select 1 from syscolumns where id=object_id('Teacher'))
begin
	create table Teacher
	(
		id_T varchar(50) primary key,
		age int null,
		name varchar(200) not null,
		phone varchar(20) not null,
		parent varchar(200) null,
		address varchar(200) null,
        id_D varchar(50) not null
	)
end
if not exists(select 1 from syscolumns where id=object_id('Classroom'))
begin
	create table Classroom
	(
		id_C varchar(50) primary key,
		name varchar(200) not null,
		area decimal(18,2) null,
		capacity int null,
		id_D varchar(50),
		description varchar(500) null
	)
end
if not exists(select 1 from syscolumns where id=object_id('Department'))
begin
	create table Department
	(
		id_D varchar(50) primary key,		
		name varchar(200) not null,
		area decimal(18,2) null,
		capacity int null,
		address varchar(200) null,
		description varchar(500) null
	)
end