USE db_school;

SELECT * FROM tbl_student;

SELECT stud_city,count(stud_roll_no) FROM tbl_student 
    WHERE stud_country = 'India'
	GROUP BY stud_city
    HAVING count(stud_roll_no) > 1;
    
SELECT * From tbl_student ORDER BY stud_marks desc;

SELECT stud_marks FROM tbl_student 
having stud_marks<(Select max(stud_marks) FROM
tbl_student) order by stud_marks desc 
limit 1;

SELECT stud_city, max(stud_marks) FROM tbl_student 
	where stud_marks<(SELECT max(stud_marks) from tbl_student)
    GROUP BY stud_city
    ;
    
SELECT stud_city, max(stud_marks) FROM tbl_student 
	where stud_marks<(SELECT max(stud_marks) from tbl_student)
    AND stud_city = 'Bejing'
    ;