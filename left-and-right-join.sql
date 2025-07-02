use db_school;
select * from tbl_dept;
select * from tbl_student;
SELECT a.stud_roll_no,a.stud_name,b.dept_name
	FROM tbl_student as a
    LEFT JOIN tbl_dept as b
    ON a.stud_dept = b.dept_id;
SELECT a.stud_roll_no,a.stud_name,b.dept_name
	FROM tbl_student as a
    RIGHT JOIN tbl_dept as b
    ON a.stud_dept = b.dept_id
    order by a.stud_roll_no;
