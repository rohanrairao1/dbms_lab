#DATATABLES

create database university_profile;

use university_profile;


#STUDENTTABLE

CREATE TABLE student(name varchar(20),rollno integer UNIQUE,age integer,math integer,sci integer,eng integer,social integer,sports integer);

insert into student(name,rollno,age,math,sci,eng,social,sports) values("dwayne",33,21,98,94,91,96,55);

insert into student(name,rollno,age,math,sci,eng,social,sports) values("john",58,18,70,87,77,98,67);

insert into student(name,rollno,age,math,sci,eng,social,sports) values("dave",27,22,54,68,98,96,77);

insert into student(name,rollno,age,math,sci,eng,social,sports) values("randy",56,19,69,75,65,67,98);

insert into student(name,rollno,age,math,sci,eng,social,sports) values("kane",11,22,86,95,52,57,73);

insert into student(name,rollno,age,math,sci,eng,social,sports) values("tom",50,21,76,84,62,74,81);


#CAMPUSTABLE

create table campus(name varchar(20),cid integer UNIQUE,loc varchar(20),cap integer,law boolean,engg boolean,buss boolean);

insert into campus(name,cid,loc,cap,law,engg,buss) values("mec",101,"hyd",1000,1,1,1);

insert into campus(name,cid,loc,cap,law,engg,buss) values("muc",104,"mad",2000,0,1,1);

insert into campus(name,cid,loc,cap,law,engg,buss) values("mgt",107,"bom",1500,1,0,0);


#QUERIES

#1
