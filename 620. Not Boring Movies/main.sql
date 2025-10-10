SELECT id, movie, description, rating
FROM cinema
where description <> 'boring'
  AND id % 2 = 1
order by (rating) desc;
