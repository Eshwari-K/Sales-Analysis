show databases;
use da;
select * from sales;
/*select * from sales
where ship_mode = "economy" 
and total_amount >25000;
*/

/*select * from sales
WHERE Category = "Technology"
and COUNTRY = "Ireland" and 
 STR_TO_DATE(Order_date, '%d-%m-%Y') > '2020-01-01'
 */
 
 /*select * ,
 (Unit_Profit*Sold_Quantity) as "TotalProfit"
 from sales
 order by TotalProfit desc 
 limit 10;
*/


/*select * from sales
where customer_name like 'J%n'
*/

/*select * from sales
where  product_name
having 'Acco';
*/
/*SELECT customer_name,product_name FROM sales
WHERE product_name
HAVING 'Acco';
*/
/*SELECT customer_name,product_name FROM sales
Where product_name like 'Acco';
*/

/*select city,total_amount from sales
order by total_amount desc
limit 5;
*/

/*select sum(total_amount),sum(sold_quantity),avg(unit_cost) as 'Average_unitcost' 
from sales
*/

/*select product_name,sum(sold_quantity) as 'total_sales'
from sales
group by product_name
*/

/*select customer_name,total_amount from sales
where total_amount>50000
*/

/*SELECT customer_name, total_amount AS sales_revenue
FROM (
  SELECT 
    customer_name,
    total_amount,
    DENSE_RANK() OVER (ORDER BY total_amount DESC) AS dr
  FROM sales
) AS ranked_sales
WHERE dr <= 5;
*/