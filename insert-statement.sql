CREATE DATABASE db_school;
USE db_school;
SHOW TABLES;

SELECT * FROM tbl_student;
INSERT INTO tbl_student VALUES(1,'Alex','2000-05-05','9874123456','Mumbai','India');
INSERT INTO tbl_student(stud_name,stud_city)VALUES('Robert','Berlin');

INSERT INTO tbl_student(stud_name,stud_city)VALUES
('Bob','Bejing'),
('Tom','Bejing'),
('Roger','London'),
('Jasper','San Fransisco'),
('Alice','Bejing');