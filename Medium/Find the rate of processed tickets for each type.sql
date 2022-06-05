/*
Find the rate of processed tickets for each type.
*/

-- https://platform.stratascratch.com/coding/9781-find-the-rate-of-processed-tickets-for-each-type?code_type=1

select type, sum(case when processed=True then 1 else 0 end)::float/count(processed) as processed_rate from facebook_complaints
group by type