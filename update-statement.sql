USE db_school;
SELECT * FROM tbl_student;

UPDATE tbl_student SET stud_country='India';
UPDATE tbl_student SET stud_country = 'Germeny'
	WHERE stud_roll_no=16;

UPDATE tbl_student SET stud_country = 'China'
	WHERE stud_city='Bejing';

Update tbl_student SET stud_mobile='9874123472',stud_dob='1996-02-03'
WHERE stud_roll_no = 17;

