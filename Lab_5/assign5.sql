/*
use university_profile;
select * from student;
select * from marks_sem1;
select * from faculty;
select * from sem1;
select * from campus;
*/
-- question 1

create table marks_sem1 select rollno,math,sci,eng,social,sports from student order by rollno asc;select * from marks_sem1;
alter table marks_sem1 add primary key(rollno);
describe marks_sem1;

-- question 2

create table faculty( name varchar(20) , fid char(4), subject varchar(20), primary key(fid)); 
insert into faculty values("kakashi",4003,"math");
insert into faculty values("guy",5002,"sports");
insert into faculty values("kurenai",5038,"eng");
describe faculty;

-- question 3

create table sem1(subj_id char(4),subject varchar(20),fid char(4),cap int,campus int,primary key(subj_id));
insert into sem1 values(101,"math",4003,60,101);
insert into sem1 values(102,"sports",5002,70,101);
insert into sem1 values(105,"eng",5038,60,104);
alter table sem1 add key(fid);
alter table sem1 add key(campus);
describe sem1;

-- question 4

alter table campus add primary key(cid);
describe campus;

-- question 5

alter table student drop column math;
alter table student drop column sci;
alter table student drop column eng;
alter table student drop column social;
alter table student drop column sports;
alter table student alter dob set default "2001-01-10";
alter table student alter yjoin set default 2019;
alter table student alter gender set default "M";
alter table student alter team set default "R";

alter table student add foreign key (rollno) references marks_sem1(rollno);



alter table student add column cid integer;
update student set cid=109 where rollno=33;
update student set cid=101 where rollno=58;
update student set cid=110 where rollno=27; 
update student set cid=104 where rollno=56; 
update student set cid=104 where rollno=11; 
update student set cid=101 where rollno=50; 
update student set cid=113 where rollno=7;  
update student set cid=107 where rollno=21;
update student set cid=109 where rollno=52;
update student set cid=109 where rollno=34;
update student set cid=110 where rollno=46;
alter table student add foreign key (cid) references campus(cid);
describe student;



