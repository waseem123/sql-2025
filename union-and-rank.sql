use db_school;
select * from tbl_student;
select * from tbl_dept;

SELECT * FROM tbl_student where stud_city = 'Mumbai'
union
SELECT * FROM tbl_student where stud_city = 'Pune';

SELECT stud_roll_no,'Solapur' stud_city,stud_marks FROM tbl_student where stud_city = 'Solapur'
union
SELECT stud_roll_no,'Mumbai' stud_city,max(stud_marks) FROM tbl_student where stud_city = 'Mumbai'
union
SELECT stud_roll_no,'Pune' stud_city,max(stud_marks) FROM tbl_student where stud_city = 'Pune';

(SELECT stud_roll_no,'Solapur' stud_city,stud_marks, RANK() OVER (ORDER BY stud_marks DESC) as stud_rank FROM tbl_student where stud_city = 'Solapur' limit 3)
union 
(SELECT stud_roll_no,'Mumbai' stud_city,stud_marks, RANK() OVER (ORDER BY stud_marks DESC) as stud_rank FROM tbl_student where stud_city = 'Mumbai' limit 3);
CREATE DATABASE `db_school` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

