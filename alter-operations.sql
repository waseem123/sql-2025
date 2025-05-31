USE db_school;
SHOW TABLES;

ALTER TABLE tbl_student ADD COLUMN stud_country varchar(30);

ALTER TABLE tbl_student ADD COLUMN stud_email varchar(30) AFTER stud_mobile;