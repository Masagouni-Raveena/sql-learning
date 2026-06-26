-- =====================================
-- Question 1
-- Display employee name and department name
-- =====================================

select employees.emp_name,
       departments.department_name
from employees
inner join departments
on employees.department_id = departments.department_id;

-- =====================================
-- Question 2
-- Display employee name, salary and department name
-- =====================================

select employees.emp_name,
       employees.salary,
       departments.department_name
from employees
inner join departments
on employees.department_id = departments.department_id;

-- =====================================
-- Question 3
-- Display all employee details with department name
-- =====================================

select employees.*,
       departments.department_name
from employees
inner join departments
on employees.department_id = departments.department_id;

-- =====================================
-- Question 4
-- Display employees working in HR department
-- =====================================

select employees.emp_name,
       departments.department_name
from employees
inner join departments
on employees.department_id = departments.department_id
where departments.department_name = 'hr';

-- =====================================
-- Question 5
-- Display employees from Hyderabad
-- =====================================

select employees.emp_name,
       employees.location,
       departments.department_name
from employees
inner join departments
on employees.department_id = departments.department_id
where employees.location = 'hyderabad';

-- =====================================
-- Question 6
-- LEFT JOIN
-- Display all employees with their department
-- =====================================

select employees.*,
       departments.department_name
from employees
left join departments
on employees.department_id = departments.department_id;

-- =====================================
-- Question 7
-- RIGHT JOIN
-- Display all departments with employee names
-- =====================================

select employees.emp_name,
       departments.department_name
from employees
right join departments
on employees.department_id = departments.department_id;

-- =====================================
-- Question 8
-- Count employees in each department
-- =====================================

select departments.department_name,
       count(*) as total_employees
from employees
inner join departments
on employees.department_id = departments.department_id
group by departments.department_name;

-- =====================================
-- Question 9
-- Display departments having more than one employee
-- =====================================

select departments.department_name,
       count(*) as total_employees
from employees
inner join departments
on employees.department_id = departments.department_id
group by departments.department_name
having count(*) > 1;

-- =====================================
-- Question 10
-- Display average salary department-wise
-- =====================================

select departments.department_name,
       avg(employees.salary) as average_salary
from employees
inner join departments
on employees.department_id = departments.department_id
group by departments.department_name;

-- =====================================
-- Question 11
-- Display maximum salary department-wise
-- =====================================

select departments.department_name,
       max(employees.salary) as highest_salary
from employees
inner join departments
on employees.department_id = departments.department_id
group by departments.department_name;

-- =====================================
-- Question 12
-- Display minimum salary department-wise
-- =====================================

select departments.department_name,
       min(employees.salary) as lowest_salary
from employees
inner join departments
on employees.department_id = departments.department_id
group by departments.department_name;

-- =====================================
-- Question 13
-- Display total salary department-wise
-- =====================================

select departments.department_name,
       sum(employees.salary) as total_salary
from employees
inner join departments
on employees.department_id = departments.department_id
group by departments.department_name;

-- =====================================
-- Question 14
-- Display employees joined after 2024-03-01
-- =====================================

select employees.emp_name,
       employees.joining_date,
       departments.department_name
from employees
inner join departments
on employees.department_id = departments.department_id
where employees.joining_date > '2024-03-01';

-- =====================================
-- Question 15
-- Display employee count department-wise
-- Sort in descending order
-- =====================================

select departments.department_name,
       count(*) as total_employees
from employees
inner join departments
on employees.department_id = departments.department_id
group by departments.department_name
order by total_employees desc;
