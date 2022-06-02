/*
Write a query to calculate the longest period (in days) that the company has gone without hiring anyone. Also, calculate the longest period without firing anyone.
*/

-- https://platform.stratascratch.com/coding/2045-days-without-hiringtermination?code_type=1


with hiring_gap_cte as (
select hire_date, next_hiring_date, next_hiring_date-hire_date hiring_gap from (select hire_date, lead(hire_date) over(order by hire_date) next_hiring_date from (select distinct hire_date from uber_employees) x) y
order by 3 desc limit 1 offset 1
),
firing_gap_cte as (
    select termination_date, next_firing_date, next_firing_date - termination_date firing_gap from (
select termination_date, lead(termination_date) over(order by termination_date) next_firing_date 
from (select distinct termination_date from uber_employees 
        where termination_date is not null) x
) y
order by 3 desc limit 1 offset 1
)

select 'longest hiring gap', hiring_gap from hiring_gap_cte
union
select 'longest termination gap', firing_gap from firing_gap_cte


/*
select hire_date date, next_hiring_date next_activity_date, hiring_gap days_gap from hiring_gap_cte
union
select termination_date date, next_firing_date next_activity_date, firing_gap days_gap from firing_gap_cte
*/