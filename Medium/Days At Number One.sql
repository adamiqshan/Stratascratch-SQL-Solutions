/*

You have a table with US rankings of tracks and another table with worldwide rankings of tracks.

Find the number of days a US track has been in the 1st position for both the US and worldwide rankings. Output the track name and the number of days in the 1st position. Order your output alphabetically by track name.

*/

-- https://platform.stratascratch.com/coding/10173-days-at-number-one?code_type=3


select US.trackname, datediff(max(US.date), min(US.date)) no_of_days from spotify_daily_rankings_2017_us US
left join spotify_worldwide_daily_song_ranking WW on US.trackname = WW.trackname and US.artist = WW.artist
where (US.position=1 and WW.position = 1) and (US.date <= WW.date)
group by US.trackname
order by 1


