#STUDENTTABLE

ALTER table student ADD gender varchar(2);

ALTER table student ADD team varchar(2);

ALTER table student DROP column age;

ALTER table student ADD dob date;

ALTER table student ADD yjoin integer;

UPDATE student SET yjoin= 2019, gender='M', team='R', dob= '2000-01-09' WHERE name = 'dwayne';

UPDATE student SET yjoin= 2019, gender='M', team='W', dob= '2002-03-21' WHERE name = 'john';

UPDATE student SET yjoin= 2018, gender='M', team='A', dob= '1999-09-11' WHERE name = 'dave';

UPDATE student SET yjoin= 2019, gender='M', team='R', dob= '2001-04-28' WHERE name = 'randy';

UPDATE student SET yjoin= 2018, gender='M', team='G', dob= '1999-02-13' WHERE name = 'kane';

UPDATE student SET yjoin= 2019, gender='M', team='W', dob= '2000-11-01' WHERE name = 'tom';

INSERT INTO student(name,rollno,dob,yjoin,gender,team,math,sci,eng,social,sports) VALUES ('carol',7,'2000-06-19',2018,'F','W',78,99,45,56,88);

insert INTO student(name,rollno,dob,yjoin,gender,team,math,sci,eng,social,sports) VALUES ('wanda',21,'2001-08-10',2019,'F','R',42,73,59,63,65);

INSERT INTO student(name,rollno,dob,yjoin,gender,team,math,sci,eng,social,sports) VALUES ('natasha',52,'2001-06-19',2019,'F','A',83,86,89,91,99);

INSERT INTO student(name,rollno,dob,yjoin,gender,team,math,sci,eng,social,sports) VALUES ('gamora',34,'2001-06-19',2018,'F','G',84,93,79,94,85);

INSERT INTO student(name,rollno,dob,yjoin,gender,team,math,sci,eng,social,sports) VALUES ('jean',46,'2000-06-19',2019,'F','G',98,97,84,87,72);


#CAMPUSTABLE

ALTER TABLE campus ADD pincode integer;

UPDATE campus SET pincode=500043 WHERE name= 'mec';

UPDATE campus SET pincode=600012 WHERE name= 'muc';

UPDATE campus SET pincode=400076 WHERE name= 'mgt';

INSERT INTO campus(name, cid, loc,pincode,cap,law,engg,buss) VALUES ('mdc', 106, 'pun',411021,1700,0,1,1);

INSERT INTO campus(name, cid, loc,pincode,cap,law,engg,buss) VALUES ('mdd', 109, 'del',110001,1400,1,1,0);

INSERT INTO campus(name, cid, loc,pincode,cap,law,engg,buss) VALUES ('mvc', 110, 'vel',631001,1400,1,1,1);

INSERT INTO campus(name, cid, loc,pincode,cap,law,engg,buss) VALUES ('mbd', 113, 'bgl',560002,800,0,1,1);


#QUERIES

#1
SELECT name,rollno,year(dob) AS age FROM student WHERE year(curdate())-year(dob) > 18 ORDER BY dob;

#2
SELECT gender, COUNT(gender) FROM Student WHERE year(curdate())-year(dob) > 19 GROUP BY gender;

#3
SELECT @x :=  SUM((math+sci+eng+social+sports)/5)/11 FROM  Student;
SELECT * FROM Student WHERE math > @x ;
SELECT COUNT(*) AS Number_of_Students FROM Student WHERE math > @x ;

#4
SELECT sum(case when pincode LIKE '5%' OR pincode LIKE '6%' then cap else 0 end)/sum(case when pincode LIKE '3%' OR pincode LIKE '4%' then cap else 0 end) AS ratio_of_stemtonostem FROM Campus;

#5
SELECT *,(math+sci+eng+social+sports)/5 FROM Student ORDER BY (math+sci+eng+social+sports)/5 desc limit 1,1;

#6
SELECT name,rollno,(math+sci+eng+social+sports)/5 AS avg_marks,(case when (math+sci+eng+social+sports)/5>@x then 'HIGH' else 'LOW' end) AS score_status FROM Student;


