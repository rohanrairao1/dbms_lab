#DATATABLES

create database university_profile;

use university_profile;


#STUDENTTABLE

CREATE TABLE student(name varchar(20),rollno integer UNIQUE,age integer,math integer,sci integer,eng integer,social integer,sports integer);

insert into student values("dwayne",33,21,98,94,91,96,55);

insert into student values("john",58,18,70,87,77,98,67);

insert into student values("dave",27,22,54,68,98,96,77);

insert into student values("randy",56,19,69,75,65,67,98);

insert into student values("kane",11,22,86,95,52,57,73);

insert into student values("tom",50,21,76,84,62,74,81);


#CAMPUSTABLE

create table campus(name varchar(20),cid integer UNIQUE,loc varchar(20),cap integer,law boolean,engg boolean,buss boolean);

insert into campus values("mec",101,"hyd",1000,1,1,1);

insert into campus values("muc",104,"mad",2000,0,1,1);

insert into campus values("mgt",107,"bom",1500,1,0,0);


#QUERIES

#1
select cid from campus where law = 1;

#2
select name, rollno, age, math, sci, sports from student where name = "dave";

#3
select name, rollno from student where math>80 OR sci>80;

#4
select DISTINCT social from student;

#5
select count(eng) from student where eng<70;

#6
select name,rollno,max(sci+math) as total marks from student;

#7
select loc from campus where engg = 0;

#8


#9
select name from student where math>70 AND sci>70 AND eng>70 AND social>70 AND sports>70;

#10
select count(name) from student where rollno>0 AND rollno<21;
select count(name) from student where rollno>20 AND rollno<41;
select count(name) from student where rollno>40 AND rollno<61;

