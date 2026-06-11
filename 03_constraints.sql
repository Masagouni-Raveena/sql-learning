-- Question 1
-- Create a table using PRIMARY KEY

create table employees_pk (
    emp_id int primary key,
    emp_name varchar(50),
    salary int
);

-- Question 2
-- Create a table using NOT NULL

create table employees_notnull (
    emp_id int,
    emp_name varchar(50) not null,
    email varchar(100)
);

-- Question 3
-- Create a table using UNIQUE

create table employees_unique (
    emp_id int,
    email varchar(100) unique
);
   
-- Question 4
-- Create a table using DEFAULT

create table employees_default (
    emp_id int,
    city varchar(50) default 'Hyderabad'
)
  
-- Question 5
-- Create a table using CHECK

create table employees_check (
    emp_id int,
    salary int check (salary > 0)
);

-- Question 6
-- PRIMARY KEY + NOT NULL

create table employees_multi1 (
    emp_id int primary key,
    emp_name varchar(50) not null
);

-- Question 7
-- UNIQUE + DEFAULT

create table employees_multi2 (
    email varchar(100) unique,
    city varchar(50) default 'Hyderabad'
);

-- Question 8
-- CHECK + NOT NULL

create table employees_multi3 (
    emp_name varchar(50) not null,
    salary int check (salary > 0)
);

-- Question 9
-- ALL CONSTRAINTS

create table employees_constraints (
    emp_id int primary key,
    emp_name varchar(50) not null,
    email varchar(100) unique,
    salary int check (salary > 0),
    city varchar(50) default 'Hyderabad'
);
