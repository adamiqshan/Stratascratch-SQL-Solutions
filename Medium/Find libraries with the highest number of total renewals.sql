/* Find libraries with the highest number of total renewals.
Output all home library definitions along with the corresponding total renewals.
Order records by total renewals in descending order. */

-- https://platform.stratascratch.com/coding/9930-find-libraries-with-the-highest-number-of-total-renewals?code_type=1


select home_library_definition, total_renewals from library_usage
where (home_library_definition, total_renewals) in (select home_library_definition, max(total_renewals) total_renewals from library_usage
group by 1)
order by 2 desc

