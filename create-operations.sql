CREATE DATABASE db_school;
USE db_school;
SHOW TABLES;

CREATE TABLE tbl_student(
        stud_dobroll_no int primary key auto_increment,
        stud_name varchar(30) NOT NULL,
        stud_dob date,
        stud_mobile varchar(10),
        stud_city varchar(30)
);

DESCRIBE tbl_student;