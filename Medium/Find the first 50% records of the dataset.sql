/* 
Find the first 50% records of the dataset.
*/

-- https://platform.stratascratch.com/coding/9859-find-the-first-50-records-of-the-dataset?code_type=1


-- MySQL, PostgreSQL Solution

select * from worker
limit (select count(1)/2 from worker)


-- MS Server Soltion

select top 50 percent from worker

