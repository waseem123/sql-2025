use db_school;

select * from tbl_student;
SELECT * FROM tbl_student 
	WHERE stud_city = "Pune"
    AND stud_dept = 2;
SELECT * FROM tbl_student
	WHERE stud_roll_no>5 
    AND stud_city != 'pune';
    
SELECT * FROM tbl_student
	WHERE stud_city='Solapur'
    OR stud_dept = 1;
    
SELECT * FROM tbl_student
	WHERE stud_dept=1
    OR stud_dept != 5;
SELECT * FROM tbl_student
	WHERE stud_marks between 70 and 90;
SELECT * FROM tbl_student 
	WHERE year(stud_dob) between 2000 and 2005;
    
UPDATE tbl_student set stud_marks=50 WHERE 
stud_roll_no=5;
UPDATE tbl_student set stud_marks=stud_marks+1;

SELECT * FROM tbl_student 
	WHERE stud_city IN('Solapur','Pune','Mumbai');

SELECT * FROM tbl_student 
	WHERE stud_city NOT IN('Solapur','Pune','Mumbai');