with boarding As(
    select turn, 
    person_name,
    weight,
    sum(weight) over(
        order by turn
        rows between unbounded preceding and current row
    ) AS Total_weight
    from Queue
)
select person_name
from boarding
where Total_weight <= 1000
order by turn Desc
limit 1;
