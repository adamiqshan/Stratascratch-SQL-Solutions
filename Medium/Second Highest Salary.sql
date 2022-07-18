/*
Find the second highest salary of employees.

https://platform.stratascratch.com/coding/9892-second-highest-salary?code_type=1
*/


select max(salary) second_highest_salary from employee
where salary not in (select max(salary) from employee)