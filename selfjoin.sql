USE employeedb;

select * FROM tbl_employee;

SELECT emp_id,emp_name,manager_name FROM(
SELECT emp_id,emp_name,'NA' manager_name
	FROM tbl_employee
    WHERE emp_manager = 0
UNION
SELECT 
	a.emp_id, 
	a.emp_name emp_name, 
    coalesce(b.emp_name,'NA') manager_name
FROM tbl_employee as a
JOIN tbl_employee as b
ON a.emp_id != b.emp_id
WHERE a.emp_manager=b.emp_id
) as t
order by emp_id;
