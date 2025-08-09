use hrdb2019;
select database();
show tables;

select
	row_number() over() as rno,
	emp_id, 
	emp_name, 
    dept_id, 
    salary 
from employee;

--
select * from employee;
select emp_id, emp_name, salary, salary * 0.2 as bonus from employee;
desc employee;

select * from department;

select  dept_id, 
	dept_name, 
	unit_id, 
	start_date
from department;

select * from employee;
