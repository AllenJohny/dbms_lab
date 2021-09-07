-- question 1
select cid from Campus where law=true;

-- question 2
select math,sci,sports from Student where name="dave";

-- question 3
select name,rollno from Student where math>80 or sci>80;

-- question 4
select distinct social from Student;

-- question 5
select count(eng) from Student where eng<70;

-- question 6
select name from Student order by math + sci desc;

-- question 7
select loc from Campus where engg=false;

-- question 8
select sum(cap) from Campus where engg=1;
select sum(cap) from Campus where engg=0;
          -- ratio = 3000/1500

-- question 9
select name from Student where math>70 and sci>70 and eng>70 and social>70 and sports>70;

-- question 10
select count(rollno) from Student where rollno>0 and rollno<21;
select count(rollno) from Student where rollno>20 and rollno<41;
select count(rollno) from Student where rollno>40 and rollno<61;
