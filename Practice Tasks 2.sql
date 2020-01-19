-- Day 3 Practice Tasks:

-- 1. list the initials of all the employees
select (substr(first_name, 0, 1)||' '|| substr(last_name, 0, 1)) as Initials from employees;

-- 2. list the full names of all employees  ( fullname: Lastname FirstName)
select (last_name)||' '||(first_name) as FullName from employees;

-- 3. who has the longest name in the employees table?
select * from employees where length((last_name)||' '||(first_name)) = (select max(length((last_name)||' '||(first_name))) from employees);

-- 4. Show all employees who work in any one of these department id 90,60, 100, 130, 120
select * from employees where department_id in ('90', '60', '100', '130', '120');

-- 5. Show all employees who does not work in any one of these department id 90,60, 100, 130, 120
select * from employees where department_id not in ('90', '60', '100', '130', '120');


-- 6. divide employees into groups by using thier job id
    -- 6.1 display the maximum salaries in each groups
    -- 6.2 display the minium salaries in each groups
    -- 6.3 display the average salary of each group
    -- 6.4 how many employees are there in each group that have minimum salary of 5000 ?
    -- 6.5 display the total budgests of each groups

-- 7. display employees' full email addresses and full names 
    --(assume that the domain of the email is @gmail)
select lower(email)||'@gmail.com' as FullEmail, first_name||' '||last_name as FullName from employees;
        
-- 8. display  full addresses from locations table
    -- (full address: Street_Addtess, CityName ZipCode, Country_id)
select street_address||' '||city||' '||postal_code||' '||country_id as FullAddress from locations;


