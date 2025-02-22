--1 List all the employees' first and last names with their salary
select first_name, last_name, salary from employees;

--2 how many employees have salary less than 5000
select count(salary) from employees where salary < 5000;

--3 how many employees have salary between 6000 and 7000
select count(salary) from employees where salary between 6000 and 7000;

--4 List all the different region_ids in countries table
select distinct region_id from countries;

--5 display the salary of the employee Grant Douglas (lastName: Grant, firstname
select salary from employees where first_name='Douglas' and last_name='Grant';

--6 display the maximum salary in employees table
select max(salary) from employees;

--7 display all information of the employee who has the highest salary in employees
select * from employees where salary = (select max(salary) from employees);

--8 display the the second maximum salary from the employees table
select max(salary) from employees where salary < (select max(salary) from employees);

--9 display all information of the employee who has the second highest salary
select * from employees where salary = (select max(salary) from employees where salary < (select max(salary) from employees));

--10 display the minimum salary in employees table
select min(salary) from employees;

--11 display all information of the employee who has the minimum salary in employees table
select * from employees where salary = (select min(salary) from employees);

--12 display the second minimum salary from the employees table
select min(salary) from employees where salary > (select min(salary) from employees);

--13 display all information of the employee who has the second minimum salary
select * from employees where salary = (select min(salary) from employees where salary > (select min(salary) from employees));

--14 display the average salary of the employees;
select avg(salary) from employees;

--15 list all the employees who are making above the average salary;
select * from employees where salary > (select avg(salary) from employees);

--16 list all the employees who are making less than the average salary
select * from employees where salary < (select avg(salary) from employees);


--17 count the total numbers of the departments in departments table
select count(*) from departments;

--18 sort the start_date in ascending order in job_history's table
select start_date from job_history order by start_date asc;

--19 sort the start_date in descending order in job_history's table
select start_date from job_history order by start_date desc;

--20 list all the employees whose first name starts with 'A'
select * from employees where first_name like 'A%';

--21 list all the employees whose job_ID contains 'IT'
select * from employees where job_ID like ('%IT%');

--22 list all the employees whose department id in 50, 80, 100
select * from employees where department_id in (50, 80, 100);

 
