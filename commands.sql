-- Question 1
-- Add email column to employees table

alter table employees
add column email varchar(20);

-- Question 2
-- Update employee email

update employees
set email='[ravi@gmail.com](mailto:ravi@gmail.com)'
where emp_id=101;

update employees
set email='[sita@gmail.com](mailto:sita@gmail.com)'
where emp_id=102;

-- Question 3
-- Modify salary datatype

alter table employees
modify salary decimal(10,2);

-- Question 4
-- Rename city column to location

alter table employees
rename column city to location;

-- Question 5
-- Drop email column

alter table employees
drop column email;

-- Question 6
-- Update employee salary

update employees
set salary = 55000
where emp_id = 101;

-- Question 7
-- Update employee department

update employees
set department_id = 2
where emp_id = 101;

-- Question 8
-- Delete one employee

delete from employees
where emp_id = 105;

-- Question 9
-- Delete employees earning below 55000

delete from employees
where salary < 55000;

