/* Find all businesses whose lowest and highest inspection scores are different.
Output the corresponding business name and the lowest and highest scores of each business.
Order the result based on the business name in ascending order. */

-- https://platform.stratascratch.com/coding/9731-find-all-businesses-whose-lowest-and-highest-inspection-scores-are-different?code_type=1

-- Solution 1

select business_name, min(inspection_score) min_score, max(inspection_score) max_score from sf_restaurant_health_violations
group by business_name
having min(inspection_score) < max(inspection_score)
order by 1

-- Solution 2

with CTE as (select business_name, min(inspection_score) min_score, max(inspection_score) max_score from sf_restaurant_health_violations
group by business_name)

select * from CTE
where min_score != max_score
order by 1