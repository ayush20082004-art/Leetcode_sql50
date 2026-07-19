# Write your MySQL query statement below
select users.user_id,
concat(upper(left(name,1)),
 lower(substring(name,2))
 ) as name from users
 order by users.user_id asc;