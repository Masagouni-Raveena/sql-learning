-- Question 1
-- Display employees with salary greater than 50000

select *
from employees
where salary > 50000;

-- Question 2
-- Display employees with salary less than 60000

select *
from employees
where salary < 60000;

-- Question 3
-- Display employees with salary greater than or equal to 55000

select *
from employees
where salary >= 55000;

-- Question 4
-- Display employees with salary less than or equal to 60000

select *
from employees
where salary <= 60000;

-- Question 5
-- Display employees whose salary is not equal to 50000

select *
from employees
where salary != 50000;

-- Question 6
-- Display employees from emp_id 1 AND salary greater than 45000

select *
from employees
where emp_id = 1
and salary > 45000;

-- Question 7
-- Display employees from emp_id 1 OR emp_id 2

select *
from employees
where emp_id = 1
or emp_id = 2;

-- Question 8
-- Display employees NOT from emp_id 1

select *
from employees
where not emp_id = 1;

-- Question 9
-- Display employees with salary between 45000 and 60000

select *
from employees
where salary between 45000 and 60000;

-- Question 10
-- Display employees whose city is Hyderabad or Chennai

select *
from employees
where city in ('hyderabad','chennai');

-- Question 11
-- Display employees whose city is NOT Hyderabad or Chennai

select *
from employees
where city not in ('hyderabad','chennai');

-- Question 12
-- Display employees whose name starts with 'R'

select *
from employees
where name like 'r%';

-- Question 13
-- Display employees whose name ends with 'a'

select *
from employees
where name like '%a';

-- Question 14
-- Display employees whose second letter is 'a'

select *
from employees
where name like '_a%';
