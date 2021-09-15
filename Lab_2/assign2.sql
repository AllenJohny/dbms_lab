/*

 FOR TABLE UPDATION,
use university_profile;
alter table student add gender char(1);
alter table student add team char(1);
alter table student drop age;
alter table student add yjoin int ;
alter table student add dob date;
select * from student;
alter table student modify gender char(1) after rollno;
alter table student modify dob date after rollno;
alter table student modify yjoin int after dob;
alter table student modify team char(1) after gender ;
alter table student rename column english to eng;

update student set gender = 'M' where name = "tom";
update student set yjoin = 2018 where name="kane";
update student set dob = "2000-11-01" where name ="tom";
update student set team = "W" where name ="TOM";
insert into student values("jean",46,"2000-06-19",2019,"F","G",98,97,84,87,72);


alter table campus add pincode int(6);
select * from campus;
alter table campus modify pincode int(6) after loc;
update campus set pincode = 400076 where name ="mgt";
insert into campus values("mbd",113,"bgl",560002,800,0,1,1);
*/

-- query 1
select name, rollno, datediff("2021-09-12",dob)/365.25 
as age from student where datediff("2021-09-12",dob)/365.25 >18 
order by datediff("2021-09-12",dob)/365.25 desc ;

-- query2
select count(rollno) as malesports from student where gender in ("M") and datediff("2021-09-12",dob)/365.25 >20;
select count(rollno) as femalesports from student where gender in ("F") and datediff("2021-09-12",dob)/365.25 >20;

-- query 3
select count(name) as totalstudents from student where math>(select avg((math+sci+eng+social+sports)/5) from student); 

-- query 4
select sum(cap) from campus as south where pincode >500000 and pincode < 600000;
select sum(cap) from campus as west where pincode >300000 and pincode < 400000;
  -- ratio-  1800:0

-- query 5
select max((math+sci+eng+sports+social)/5) as second 
from student where (math+sci+eng+sports+social)/5 < (select max((math+sci+eng+sports+social)/5) from student);

-- query 6

select name, rollno,(math+sci+eng+social+sports)/5 as average,if(((math+sci+eng+social+sports)/5)>(select avg((math+sci+eng+social+sports)/5)  
from student),"High","Low") as score_status from student