/*
Find the number of times an artist has been on the billboard top 100 in the past 20 years. Output the result alongside the artist's name and order records based on the founded count in descending order.
*/

-- https://platform.stratascratch.com/coding/9744-artist-of-the-decade?code_type=1

select artist, count(artist) from billboard_top_100_year_end
where (year >= (select max(date_part('year', CURRENT_DATE))-20 from billboard_top_100_year_end)) and (year_rank <= 100)
group by artist
order by 2 desc


