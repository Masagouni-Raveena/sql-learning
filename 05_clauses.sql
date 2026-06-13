-- Question 1
-- Display employees whose salary is greater than 50000

select *
from employees
where salary > 50000;

-- Question 2
-- Display employees from Hyderabad

select *
from employees
where city = 'hyderabad';

-- Question 3
-- Display employees from Finance department

select *
from employees
where department = 'finance';

-- Question 4
-- Display unique cities

select distinct city
from employees;

-- Question 5
-- Display unique departments

select distinct department
from employees;

-- Question 6
-- Sort employees by salary in ascending order

select *
from employees
order by salary;

-- Question 7
-- Sort employees by salary in descending order

select *
from employees
order by salary desc;

-- Question 8
-- Sort employees by name alphabetically

select *
from employees
order by name;

-- Question 9
-- Count employees department-wise

select department,
count(*) as total_employees
from employees
group by department;

-- Question 10
-- Find average salary department-wise

select department,
avg(salary) as average_salary
from employees
group by department;

-- Question 11
-- Find maximum salary department-wise

select department,
max(salary) as highest_salary
from employees
group by department;

-- Question 12
-- Display departments having more than 1 employee

select department,
count(*) as total_employees
from employees
group by department
having count(*) > 1;

-- Question 13
-- Display departments whose average salary is greater than 50000

select department,
avg(salary) as average_salary
from employees
group by department
having avg(salary) > 50000;

-- Question 14
-- Display first 3 employees

select *
from employees
limit 3;

-- Question 15
-- Display top 2 highest-paid employees

select *
from employees
order by salary desc
limit 2;
