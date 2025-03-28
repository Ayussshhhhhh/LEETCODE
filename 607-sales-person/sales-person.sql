select s.name 
from SalesPerson s
except 
select p.name 
from salesperson p
left join 
    Orders o
    on p.sales_id = o.sales_id
left join
    Company c 
    on c.com_id = o.com_id 
    where c.name = 'RED'