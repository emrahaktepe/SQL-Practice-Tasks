--1 Show all job_id and average salary who work as any of these jobs 
--  IT_PROG, SA_REP, FI_ACCOUNT, AD_VP
select job_id, (min_salary+max_Salary)/2 as Avg_Salary
from jobs 
where job_id
in ('IT_PROG', 'SA_REP', 'FI_ACCOUNT', 'AD_VP');

--2 Show all records whose last name contains 2 lowercase 'a's
select * from Employees where regexp_count(last_name, 'a')=2;

--3 Display max salary  for each department
select departments.department_id, round(avg(employees.salary))
from departments 
inner join employees
on departments.department_id = employees.department_id
group by departments.department_id
order by departments.department_id asc
;

--4 Display total salary for each department except department_id 50, 
--  and where total salary >30000
select departments.department_name, sum(employees.salary) 
from departments
inner join employees
on departments.department_id = employees.department_id
where departments.department_id != 50
group by departments.department_name
having sum(employees.salary) < 30000
;

--5 Write an SQL query that returns first and last name of any employees 
--  who started job between 1-JAN-2000 and 3-SEP-2007 from the hr database
select first_name||' '||last_name
from employees
where hire_date between '1-JAN-2000' and '3-SEP-2007'
;

--6 Display country_id, country name, region id, region name from hr database
select countries.country_id, countries.country_name, countries.region_id, regions.region_name
from countries
inner join regions
on regions.region_id = countries.region_id
;

--7 Display all cities and country names from hr database (ordered by country name asc)
select locations.city, countries.country_name
from locations
inner join countries
on locations.country_id = countries.country_id
order by countries.country_name asc
;

--8 Display the first name, last name, department_id, and department_name,
--  for all employees for departments 80 or 40.
select employees.first_name||' '||employees.last_name,
departments.department_id||' '||departments.department_name
from employees
inner join departments
on employees.department_id = departments.department_id
where departments.department_id = 40 or departments.department_id=80
;

--9 Display employees' first_name, last_name, department_id and all department_name 
--  including those where there is not any employee.
select employees.first_name||' '||employees.last_name,
departments.department_id||' '||departments.department_name
from employees
right outer join departments
on employees.department_id = departments.department_id
order by departments.department_id
;

--10 Display the first_name, last_name, department_id, and department_name, 
--   for all employees who do or do not have any department
select employees.first_name||' '||employees.last_name,
departments.department_id||' '||departments.department_name
from employees
left outer join departments
on employees.department_id = departments.department_id
order by departments.department_id
;
 