use db_school;
SELECT * FROM tbl_student;
SELECT * FROM tbl_marks;

SELECT stud_roll_no,stud_name,
	sum(C) c,sum(Java) java,sum(Python) python, (sum(C)+sum(Java)+sum(Python)) total, ((sum(C)+sum(Java)+sum(Python))/600)*100 percentage FROM(
	SELECT s.stud_roll_no,s.stud_name,
		sum(m.marks) 'C',0 'Java', 0 'Python'
		FROM tbl_student s
		JOIN tbl_marks m
		ON s.stud_roll_no = m.roll_no
		WHERE m.subject_name='C'
		GROUP BY s.stud_roll_no
	UNION ALL 
	SELECT s.stud_roll_no,s.stud_name,
		0 'C',sum(m.marks) 'Java', 0 'Python'
		FROM tbl_student s
		JOIN tbl_marks m
		ON s.stud_roll_no = m.roll_no
		WHERE m.subject_name='Java'
		GROUP BY s.stud_roll_no
	UNION ALL

	SELECT s.stud_roll_no,s.stud_name,
		0 'C',0 'Java', sum(m.marks) 'Python'
		FROM tbl_student s
		JOIN tbl_marks m
		ON s.stud_roll_no = m.roll_no
		WHERE m.subject_name='Python'
		GROUP BY s.stud_roll_no
        ) as t
        group by stud_roll_no,stud_name;

SELECT stud_roll_no,stud_name,
	sum(C) c,sum(Java) java,sum(Python) python, (sum(C)+sum(Java)+sum(Python)) total, ((sum(C)+sum(Java)+sum(Python))/300)*100 percentage,
        sem FROM(
	SELECT s.stud_roll_no,s.stud_name,
		sum(m.marks) 'C',0 'Java', 0 'Python',m.semester as sem
		FROM tbl_student s
		JOIN tbl_marks m
		ON s.stud_roll_no = m.roll_no
		WHERE m.subject_name='C'
		GROUP BY s.stud_roll_no,m.semester
	UNION ALL 
	SELECT s.stud_roll_no,s.stud_name,
		0 'C',sum(m.marks) 'Java', 0 'Python',m.semester as sem
		FROM tbl_student s
		JOIN tbl_marks m
		ON s.stud_roll_no = m.roll_no
		WHERE m.subject_name='Java'
		GROUP BY s.stud_roll_no,m.semester
	UNION ALL

	SELECT s.stud_roll_no,s.stud_name,
		0 'C',0 'Java', sum(m.marks) 'Python',m.semester as sem
		FROM tbl_student s
		JOIN tbl_marks m
		ON s.stud_roll_no = m.roll_no
		WHERE m.subject_name='Python'
		GROUP BY s.stud_roll_no,m.semester
        ) as t
        group by stud_roll_no,stud_name,sem;