-- Method 1
select product_name
from orders
where customer_id in (select id from customers where upper(name) = upper('Alexey'));

--Method 2
select product_name
from customers
         join orders on customers.id = orders.customer_id
where upper(name) = upper('aLexEy')