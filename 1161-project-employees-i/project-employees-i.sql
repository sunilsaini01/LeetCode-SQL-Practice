# Write your MySQL query statement below
select p.project_id, 
    round(
        coalesce(sum(e.experience_years)/ count(e.experience_years), 0), 2
    ) as average_years
from project as p
left join employee as e 
on p.employee_id = e.employee_id
GROUP BY p.project_id;