# Write your MySQL query statement below
select register.contest_id,
round(count(register.user_id)*100/(select count(*) from users),2) as percentage
from users inner join 
register on 
users.user_id = register.user_id
group by register.contest_id
order by percentage desc, register.contest_id ;
