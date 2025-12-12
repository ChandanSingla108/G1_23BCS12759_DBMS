#G1_23BCS12759_Session4
select ROUND(AVG(d.order_date=d.customer_pref_delivery_date)*100,2)as immediate_percentage 
from Delivery as d
where (d.customer_id,d.order_date)
in(SELECT customer_id,MIN(order_date) from Delivery
group by customer_id);
