
# Write your MySQL query statement below
SELECT 
    r.contest_id,
    ROUND(COUNT(r.user_id) * 100.0 / (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM Register r
join Users u
on u.user_id = r.user_id 
group by r.contest_id
order by percentage desc ,r.contest_id asc 
