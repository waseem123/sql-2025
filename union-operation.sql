use db_school;
select * from tbl_student;
select * from tbl_dept;

-- First 3 ranks from every city
select stud_city,stud_marks,stud_rank FROM(
	select stud_city,
        stud_marks,
        rank() over(partition by stud_city order by stud_marks desc) as stud_rank
From tbl_student
) as t
WHERE stud_rank<=3;

-- first 3 ranks from Bangalore and Hyderabad
select stud_city,stud_marks,stud_rank FROM(
	select stud_city,
			stud_marks,
			rank() over(partition by stud_city order by stud_marks desc) as stud_rank
	From tbl_student
) as t
WHERE stud_city in('Bangalore','Hyderabad')
AND stud_rank<=3;

SELECT max(stud_marks),dept_name
	FROM tbl_student as s
    JOIN tbl_dept as d
    ON s.stud_dept = d.dept_id
    WHERE dept_name IN( 'Computer','Civil')
    GROUP BY dept_name;

SELECT max(stud_marks),dept_name
	FROM tbl_student as s
    JOIN tbl_dept as d
    ON s.stud_dept = d.dept_id
    WHERE dept_name = 'Computer'
Union
SELECT max(stud_marks),dept_name
	FROM tbl_student as s
    JOIN tbl_dept as d
    ON s.stud_dept = d.dept_id
    WHERE dept_name = 'Civil';