/*
Find the titles of workers that earn the highest salary. Output the highest-paid title or multiple titles that share the highest salary.
*/

--https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries?utm_source=blog&code_type=1
    
select t.worker_title, w.salary
from worker w
inner join title t on t.worker_ref_id = w.worker_id
where salary = (select max(salary) from worker)