use db_school;
SELECT * FROM tbl_student;
SELECT * FROM tbl_marks;

SELECT roll_no,name,sum(sem1) sem1,sum(sem2) sem2, (sum(sem1)+sum(sem2)) total,(sum(sem1)+sum(sem2))/6 percentage FROM(
	SELECT 
		s.stud_roll_no roll_no,
		s.stud_name name,
		sum(marks) sem1,
		0 sem2
	FROM tbl_student as s
	JOIN tbl_marks as m
	ON s.stud_roll_no = m.roll_no
	WHERE semester=1
	GROUP BY s.stud_roll_no
	UNION ALL
	SELECT 
		s.stud_roll_no,
		s.stud_name,
		0 sem1,
		sum(marks) sem2
	FROM tbl_student as s
	JOIN tbl_marks as m
	ON s.stud_roll_no = m.roll_no
	WHERE semester=2
	GROUP BY s.stud_roll_no
) as t
GROUP BY roll_no,name;