USE db_school;
SHOW TABLES;

ALTER TABLE tbl_student ADD COLUMN stud_country varchar(30);

ALTER TABLE tbl_student ADD COLUMN stud_email varchar(30) AFTER stud_mobile;

ALTER TABLE tbl_student CHANGE COLUMN stud_mobile stud_mobilenumber varchar(10);
ALTER TABLE tbl_student CHANGE COLUMN stud_mobilenumber stud_mobilenumber int;

ALTER TABLE tbl_student CHANGE COLUMN stud_mobilenumber stud_mobileno varchar(10);

ALTER TABLE tbl_student DROP COLUMN stud_country;