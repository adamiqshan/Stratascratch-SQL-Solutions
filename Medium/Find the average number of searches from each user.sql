/*
Find the average number of searches made by each user and present the result with their corresponding user id.
*/

--https://platform.stratascratch.com/coding/9640-find-the-average-number-of-searches-from-each-user?code_type=3


select id_user, ROUND(AVG(n_searches),2) average_search from airbnb_searches
group by id_user


