-- Question 1
-- Convert employee names to uppercase

select upper(emp_name) as employee_name
from employees;

-- =====================================

-- Question 2
-- Convert employee names to lowercase

select lower(emp_name) as employee_name
from employees;

-- =====================================

-- Question 3
-- Find length of employee names

select emp_name,
length(emp_name) as name_length
from employees;

-- =====================================

-- Question 4
-- Concatenate employee name and location

select concat(emp_name,' - ',location)
as employee_details
from employees;

-- =====================================

-- Question 5
-- Display first 3 characters of employee names

select emp_name,
substring(emp_name,1,3)
as first_three_characters
from employees;

-- =====================================

-- Question 6
-- Display first 2 characters of employee names

select emp_name,
left(emp_name,2)
as first_two_characters
from employees;

-- =====================================

-- Question 7
-- Display last 2 characters of employee names

select emp_name,
right(emp_name,2)
as last_two_characters
from employees;

-- =====================================

-- Question 8
-- Replace Hyderabad with Hyderabad City

select replace(location,
'hyderabad',
'hyderabad city')
as updated_location
from employees;

-- =====================================

-- Question 9
-- Reverse employee names

select emp_name,
reverse(emp_name)
as reversed_name
from employees;

-- =====================================

-- Question 10
-- Remove extra spaces

select trim(emp_name)
as trimmed_name
from employees;

-- =====================================

-- Question 11
-- Find position of letter 'a'

select emp_name,
instr(emp_name,'a')
as position_of_a
from employees;

-- =====================================

-- Question 12
-- Repeat employee names twice

select repeat(emp_name,2)
as repeated_name
from employees;

-- =====================================

-- Question 13
-- Pad employee names from left

select lpad(emp_name,10,'*')
as padded_name
from employees;

-- =====================================

-- Question 14
-- Pad employee names from right

select rpad(emp_name,10,'*')
as padded_name
from employees;

-- =====================================

-- Question 15
-- Display employee name and location in uppercase

select concat(
upper(emp_name),
' - ',
upper(location)
)
as employee_info
from employees;
