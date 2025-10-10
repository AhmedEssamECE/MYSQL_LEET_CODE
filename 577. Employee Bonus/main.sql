select e1.name ,b.bonus
from Employee e1
left join Bonus b
on b.empId=e1.empId
where b.bonus<1000 or b.bonus is null
