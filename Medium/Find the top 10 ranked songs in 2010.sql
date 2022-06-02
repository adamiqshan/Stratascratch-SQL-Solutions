/*What were the top 10 ranked songs in 2010? 
Output the rank, group name, and song name but do not show the same song twice.
Sort the result based on the year_rank in ascending order.*/


-- https://platform.stratascratch.com/coding/9650-find-the-top-10-ranked-songs-in-2010?code_type=1

select distinct year_rank as rank, group_name, song_name from billboard_top_100_year_end
where year = 2010 and year_rank < 11
order by 1


