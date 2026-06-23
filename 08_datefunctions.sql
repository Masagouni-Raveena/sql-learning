-- Question 1
-- Display employee names and joining dates

select emp_name,
joining_date
from employees;

-- =====================================

-- Question 2
-- Extract joining year

select emp_name,
year(joining_date) as joining_year
from employees;

-- =====================================

-- Question 3
-- Extract joining month

select emp_name,
month(joining_date) as joining_month
from employees;

-- =====================================

-- Question 4
-- Extract joining day

select emp_name,
day(joining_date) as joining_day
from employees;

-- =====================================

-- Question 5
-- Add 10 days to joining date

select emp_name,
date_add(joining_date, interval 10 day)
as future_date
from employees;

-- =====================================

-- Question 6
-- Subtract 10 days from joining date

select emp_name,
date_sub(joining_date, interval 10 day)
as previous_date
from employees;

-- =====================================

-- Question 7
-- Add 1 month to joining date

select emp_name,
date_add(joining_date, interval 1 month)
as next_month
from employees;

-- =====================================

-- Question 8
-- Add 1 year to joining date

select emp_name,
date_add(joining_date, interval 1 year)
as next_year
from employees;

-- =====================================

-- Question 9
-- Find days worked till today

select emp_name,
datediff(curdate(), joining_date)
as days_worked
from employees;

-- =====================================

-- Question 10
-- Employees joined after 2024-03-31

select *
from employees
where joining_date > '2024-03-31';

-- =====================================

-- Question 11
-- Employees joined before 2024-04-01

select *
from employees
where joining_date < '2024-04-01';

-- =====================================

-- Question 12
-- Employees joined in March

select *
from employees
where month(joining_date) = 3;

-- =====================================

-- Question 13
-- Employees joined in 2024

select *
from employees
where year(joining_date) = 2024;

-- =====================================

-- Question 14
-- Display current date

select curdate() as today;

-- =====================================

-- Question 15
-- Display current date and time

select now() as current_datetime;

-- =====================================

-- Question 16
-- Display current year

select year(curdate()) as current_year;

-- =====================================

-- Question 17
-- Display current month

select month(curdate()) as current_month;

-- =====================================

-- Question 18
-- Display current day

select day(curdate()) as current_day;

-- =====================================

-- Question 19
-- Find difference between two dates

select datediff(
'2026-06-30',
'2026-06-10'
) as total_days;

-- =====================================

-- Question 20
-- Display employees ordered by joining date

select *
from employees
order by joining_date;
