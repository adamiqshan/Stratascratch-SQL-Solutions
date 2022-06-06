/*
Find the old-to-young player ratio for each Olympic games. 'Old' is defined as ages 50 and older and 'young' is defined as athletes 25 or younger. Output the Olympic games, number of old athletes, number of young athletes, and the old-to-young ratio.
*/

-- https://platform.stratascratch.com/coding/9599-old-and-young-athletes?code_type=1


select games, sum(case when age>=50 then 1 else 0 end) as old,
        sum(case when age<=25 then 1 else 0 end) as young,
        sum(case when age>=50 then 1 else 0 end)::float/sum(case when age<=25 then 1 else 0 end) ratio
from olympics_athletes_events
group by games
order by 4 desc


