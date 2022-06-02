/* Find libraries with the highest number of total renewals.
Output all home library definitions along with the corresponding total renewals.
Order records by total renewals in descending order. */

-- https://platform.stratascratch.com/coding/9930-find-libraries-with-the-highest-number-of-total-renewals?code_type=1

-- send me a pull request if you have a better solution to this problem 😊

with max_total_renewals as (
select home_library_definition, sum(total_renewals) max_renewals from library_usage
group by 1
order by 2 desc limit 1)

select home_library_definition, sum(total_renewals) total_renewals from library_usage
group by 1
having sum(total_renewals) = (select max_renewals from max_total_renewals)

