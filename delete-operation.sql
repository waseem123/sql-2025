use db_school;

SELECT * FROM tbl_student;

DELETE FROM tbl_student WHERE stud_roll_no = 20;
commit;
rollback;
DELETE FROM tbl_student WHERE year(stud_dob)>1999;

DELETE FROM tbl_student;
INSERT INTO tbl_student(stud_name,stud_city)VALUES('Robert','Berlin');

TRUNCATE tbl_student;