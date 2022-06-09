/*

Find employees in the HR department
Output the first name and the department of employees. Duplicate the output, e.g. if there are 3 employees/rows, output should have 6 rows, so that each employee has two rows.

*/

-- https://platform.stratascratch.com/coding/9858-find-employees-in-the-hr-department-and-output-the-result-with-one-duplicate?code_type=1

-- Solution 1
select worker.first_name, worker.department from worker
cross join (select first_name, department from worker where worker.department = 'HR') x
where worker.department = 'HR'

-- Solution 2
select first_name, department from worker where worker.department = 'HR'
union all
select first_name, department from worker where worker.department = 'HR'