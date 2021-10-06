/*use university_profile;
show tables;
select * from student;
*/


-- query 1
select * from student where team="R"
union
select * from student where gender="F";

-- query 2
select count(name),team from student group by team;

-- query3
select avg(math),team from student where gender="M" group by team;

-- query4
(select * from student group by team,gender order by gender desc) order by team asc;

-- query 5
select avg(sci),team from student group by team order by avg(sci) desc limit 2;