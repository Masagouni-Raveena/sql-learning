-- Question 1
-- Count total employees

select count(*) as total_employees
from employees;

-- Question 2
-- Count employees in Finance department

select count(*) as finance_employees
from employees
where department = 'finance';

-- Question 3
-- Find total salary of all employees

select sum(salary) as total_salary
from employees;

-- Question 4
-- Find total salary of Sales department

select sum(salary) as total_sales_salary
from employees
where department = 'sales';

-- Question 5
-- Find average salary of all employees

select avg(salary) as average_salary
from employees;

-- Question 6
-- Find average salary department-wise

select department,
avg(salary) as average_salary
from employees
group by department;

-- Question 7
-- Find highest salary in the company

select max(salary) as highest_salary
from employees;

-- Question 8
-- Find highest salary department-wise

select department,
max(salary) as highest_salary
from employees
group by department;

-- Question 9
-- Find lowest salary in the company

select min(salary) as lowest_salary
from employees;

-- Question 10
-- Find lowest salary department-wise

select department,
min(salary) as lowest_salary
from employees
group by department;

-- Question 11
-- Find number of employees in each city

select city,
count(*) as total_employees
from employees
group by city;

-- Question 12
-- Find total salary city-wise

select city,
sum(salary) as total_salary
from employees
group by city;

-- Question 13
-- Find average salary city-wise

select city,
avg(salary) as average_salary
from employees
group by city;

-- Question 14
-- Find highest salary city-wise

select city,
max(salary) as highest_salary
from employees
group by city;

-- Question 15
-- Find lowest salary city-wise

select city,
min(salary) as lowest_salary
from employees
group by city;
