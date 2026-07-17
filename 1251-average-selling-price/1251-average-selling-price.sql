# Write your MySQL query statement below
select prices.product_id ,
round(
    ifnull(sum(prices.price*units)/sum(units),0),2
) as average_price
from prices left join unitssold on
prices.product_id=unitssold.product_id
AND unitssold.purchase_date BETWEEN prices.start_date AND prices.end_date
GROUP BY prices.product_id;