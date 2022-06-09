/*
Find the duplicate records in the dataset.
Output the worker title, affected_from date, and the number of times the records were duplicated
*/

--https://platform.stratascratch.com/coding/9849-find-the-duplicate-records-in-the-dataset?code_type=1


select worker_title, affected_from, count(1) no_of_duplicates from title
group by worker_title, affected_from
having count(1)>1

