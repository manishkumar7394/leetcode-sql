# Write your MySQL query statement below
select p.product_id, ifnull(round(sum(u.units*p.price)/sum(units),2),0) as average_price
from prices p
left join UnitsSold u on p.product_id = u.product_id
and purchase_date >=start_date
and purchase_date <= end_date
group by  p.product_id