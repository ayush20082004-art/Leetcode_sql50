# Write your MySQL query statement below
select teacher.teacher_id,
count(distinct teacher.subject_id) as cnt
from teacher
group by teacher.teacher_id;