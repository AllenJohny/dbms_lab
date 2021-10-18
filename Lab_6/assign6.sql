/*
use university_profile;
show tables;
select * from campus;
select * from marks_sem1;
select * from student;
*/

-- query 1

SELECT * FROM student
LEFT JOIN marks_sem1 ON student.rollno = marks_sem1.rollno
UNION
SELECT * FROM student
RIGHT JOIN marks_sem1 ON student.rollno = marks_sem1.rollno;


-- query 2

select student.name,marks_sem1.sports from student inner join marks_sem1 on student.rollno=marks_sem1.rollno;

-- query 3

select student.name,marks_sem1.math,student.rollno from student cross join marks_sem1 on student.rollno=marks_sem1.rollno cross join campus on student.cid=campus.cid where law=1;

-- query 4

select * from student left join campus on student.cid=campus.cid;
select * from student right join campus on student.cid=campus.cid;



