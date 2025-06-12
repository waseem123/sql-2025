use db_school;
show tables;

CREATE TABLE tbl_dept(dept_id int primary key auto_increment,
dept_name varchar(30), dept_building varchar(2));

INSERT INTO tbl_dept(dept_name,dept_building)VALUES
	('Computer','A'),
    ('Civil','B'),
    ('Mechanical','C'),
    ('Electronics','D'),
    ('Electrical','E');

SELECT * FROM tbl_student;
SELECT dept_name FROM(SELECT * FROM tbl_dept) as t;

SELECT * FROM tbl_student WHERE stud_roll_no=5+3;
SELECT * FROM tbl_student WHERE stud_city = 'Bejing';

SELECT * FROM tbl_student ORDER BY stud_name desc;
SELECT * FROM tbl_student ORDER BY stud_dob desc;
SELECT * FROM tbl_student ORDER BY stud_name desc,stud_dob desc;
SELECT * FROM tbl_student order by stud_city;
UPDATE tbl_student set stud_dob='2004-03-05' WHERE stud_roll_no=23;

SELECT * FROM tbl_student order by stud_roll_no desc limit 12;

SELECT * FROM tbl_student order by stud_dob desc limit 3;

SELECT * FROM tbl_student WHERE year(stud_dob)>2000 ORDER BY stud_dob asc LIMIT 2;