/*Find the total number of housing units completed for each year. Output the year along with the total number of housings. Order the result by year in ascending order.*/

-- https://platform.stratascratch.com/coding/10167-total-number-of-housing-units?code_type=1


-- Solution

select year, sum(south + west + midwest + northeast) n_units 
from housing_units_completed_us
group by year
order by year