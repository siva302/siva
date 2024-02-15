-- 1.Write a query to get the first 5 characters of first name from employees table
select left(first_name ,5) as '5 cahr of firstname'from employees;
-- 2.Write a query to get first name from employees table after removing white spaces from both side
select trim(first_name) as 'removing spaces'from employees;
-- 3.Write a query to get the length of the employee names (first_name, last_name) from employees table
select length(first_name) as 'len firstname'from employees;
select length(last_name) as 'len lastname'from employees;
-- 4.Write a query to check if the first_name fields of the employees table contains numbers
select first_name  from employees
where first_name='[0-9]';
--  5.Write a query to display the name (first_name, last_name) and salary for all employees whose salary is  in the range $15,000 through $25,000
select first_name,last_name,salary from employees
 where salary between 15000 and 25000;
 -- 6.Write a query to display the name (first_name, last_name) and department ID of all employees in departments 30 or 100 in ascending order
 select first_name,last_name,department_id from employees 
 where department_id =30 or department_id = 100 order by department_id;
 -- 7.Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $25,000 through $45,000 and are in department 20 or 100.Write a query to display the name (first_name, last_name) and hire date for all employees who were hired in 1987
 select first_name,last_name,salary,department_id from employees
 where not(salary between 25000 and 45000) and department_id =20 or department_id = 100;
  select first_name,last_name,hire_date from employees
  where left(hire_date,4)='1987';
  -- 8.Write a query to display the first_name of all employees who have both "c" and "b" in their first name
   select first_name from employees where first_name like '%c%' and first_name like '%b%';
   -- 9.Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, and whose salary is not equal to $3,500, $20,000, or $25,000
   select last_name,job_id,salary from employees
   where job_id='sh_clerk' and where not in (3500,20000,25000);