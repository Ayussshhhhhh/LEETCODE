select customer_number 
from Orders 
group by customer_number 
having count(order_number) >= all(select count(order_number) from Orders group by customer_number)
