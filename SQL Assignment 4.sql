--Q-1. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’
--with ‘A’.

select  
replace('First_name','a','A') 
from Workertable

--Q-2. Write an SQL query to print all Worker details from the Worker table order by
--FIRST_NAME Ascending and DEPARTMENT Descending.

select * from 
Workertable
order by First_name asc,Department desc

--Q-3. Write an SQL query to fetch the names of workers who earn the highest salary.

select first_name,salary 
from Workertable
where salary IN
	(Select max(salary) as sls
	from Workertable
	Group by First_name)

