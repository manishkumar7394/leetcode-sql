# Write your MySQL query statement below
select product_id, new_price as price
FROM  Products
WHERE  (product_id, change_date) IN 
(
    SELECT product_id, max(change_date)
    FROM Products
    Where change_date <= '2019-08-16'
    GROUP BY product_id

) 
UNION

SELECT Product_id, 10 as price
FROM Products
WHERE product_id NOT IN 
(
    SELECT Product_id
    FROM products
    where change_date<='2019-08-16'
)