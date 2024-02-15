use task;
select * from emp1;
desc emp1;
#  1.Write a query to update the portion of the phone_number in the employees table, within the phone number the substring '123' will be replaced by '999'.
update emp1
set phone_num= replace(phone_num,'123','999')
where phone_num like '%123%';
select  * from emp1;
# 2.Write a query to get the details of the employees where the length of the first name greater than or equal to 8.
select * from emp1 where length(first_name)>='8';
# 3.Write a query to append '@example.com' to email field.
update emp1 set email=concat(email,'@example.com');
select * from emp1;
# 4. Write a query to get the employee id, first name and hire month from hire_date [ Hint: Use mid() ]
select emp_id,first_name, Mid(hire_date, 6, 2) as hire_month from emp1 ;
# 5.Write a query to get the employee id, email id (discard the last three characters).
select emp_id,left(email,length(email) - 3) as email_id
 from emp1;
# 6 Write a query to find all employees where first names are in upper case
SELECT * FROM emp1
 WHERE  first_name = BINARY ucase(FIRST_NAME);
 # 7.Write a query to extract the last 4 character of phone numbers
 select phone_num,right(phone_num ,4) as last_ph_no
 from emp1;
 #8.Write a query to display the length of first name for employees where last name contain character 'c' after 2nd position
 select  FIRST_NAME,LAST_NAME
 FROM emp1
 WHERE instr(LAST_NAME,'C')>2;
 
 #9.	Write a query that displays the first name and the length of the first name for all employees whose name starts with the letters 'A', 'J' or 'M'. Give each column an appropriate label. Sort the results by the employees' first names
 
 SELECT FIRST_NAME
 FROM EMP1
 where FIRST_NAME like'A%' OR FIRST_NAME LIKE 'J%' OR FIRST_NAME LIKE 'M%'
 ORDER BY first_NAME ASC; 
 
 #10 Write a query to display the first name and salary for all employees. Format the salary to be 10 characters long, left-padded with the $ symbol. Label the column SALARY.
 
 SELECT FIRST_NAME,
 LPAD(salary, 10, '$')SALARY
 FROM emp1;