/*
Find the popularity percentage for each user on Meta/Facebook. The popularity percentage is defined as the total number of friends the user has divided by the total number of users on the platform, then converted into a percentage by multiplying by 100.
Output each user along with their popularity percentage. Order records in ascending order by user id.
The 'user1' and 'user2' column are pairs of friends.
*/

-- https://platform.stratascratch.com/coding/10284-popularity-percentage?code_type=1



-- Solution 01

with data_table as (
SELECT user1
FROM facebook_friends
UNION ALL
SELECT user2
FROM facebook_friends
)

select user1 as users, count(user1)::float/(select count(distinct user1) from data_table)*100 as popularity_percent
from data_table
group by 1
order by 1


-- Solution 02

with user1 as (
select user1 users, count(user1) friends_count from facebook_friends
group by user1
order by 1
),
user2 as (
select user2 users , count(user2) friends_count from facebook_friends
group by user2
order by 1
),
data_table as (
select users, sum(friends_count) number_of_friends from (select * from user1
union all
select * from user2) x
group by users
order by users
)

select users, number_of_friends*100/(select count(*) from data_table) as popularity_percent 
from data_table





