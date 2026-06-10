-- display all employees
select * from employees;

-- display employee names
select name from employees;

-- display employee names and salaries
select name, salary from employees;

-- display unique departments
select distinct department from employees;

-- display top 5 employees
select * from employees limit 5;
