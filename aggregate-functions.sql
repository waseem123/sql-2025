USE db_school;
select * from tbl_student;
SELECT sum(stud_marks) FROM tbl_student;
SELECT min(stud_marks) FROM tbl_student;
SELECT max(stud_marks) FROM tbl_student;
SELECT COUNT(stud_marks) FROM tbl_student;
SELECT AVG(stud_marks) FROM tbl_student;

SELECT COUNT(stud_dob) FROM tbl_student;
SELECT COUNT(*) FROM tbl_student;

SELECT stud_name,stud_city,COUNT(stud_roll_no) FROM tbl_student GROUP BY stud_name,stud_city;
SELECT count(stud_roll_no) FROM tbl_student WHERE year(stud_dob)=1998;
