/*
Find matching hosts and guests pairs in a way that they are both of the same gender and nationality.
Output the host id and the guest id of matched pair.
*/

-- https://platform.stratascratch.com/coding/10078-find-matching-hosts-and-guests-in-a-way-that-they-are-both-of-the-same-gender-and-nationality?code_type=1


select distinct h.host_id, g.guest_id from airbnb_hosts h
join airbnb_guests g on (g.gender = h.gender) and (g.nationality = h.nationality)


