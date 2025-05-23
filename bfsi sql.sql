show databases;
use da;

#Display the records whose ship mode is Economy and is greater than 25000
select * from sales;
where ship_mode = "economy" 
and total_amount >25000;


#Dispaly the records whose category is technology and country is Ireland after the 1stJan,2020.
select * from sales
WHERE Category = "Technology"
and COUNTRY = "Ireland" and 
STR_TO_DATE(Order_date, '%d-%m-%Y') > '2020-01-01'
 

 #Dispaly Totalprofit in descending order with limit of 10
 select * 
 from sales
 order by unit_profit desc 
 limit 10;

#Dispaly customer names whose names Starts with J and ends with n
select * from sales
where customer_name like 'J%n'


#Display the product_name that has 'Acco' in it 
select customer_name,product_name from sales
where product_name like '%Acco%';


#Display the 5 highest total_amount,cities 
select city,sum(total_amount) as 'Total_amount' from sales
order by total_amount desc
limit 5;

#Display total revenue,total sales ad average unit cost
select sum(total_amount),count(order_id),avg(unit_cost) as 'Average_unitcost' 
from sales

#Display product name and total_sales
select product_name,sum(sold_quantity) as 'total_sales'
from sales
group by product_name

#Display customer names whose total_amount is greater than 50000
select customer_name,total_amount from sales
where total_amount>50000

#Display the total_revenue using Dense rank with limit of 5.
select customer_name,sum(total_amount) as 'sales_revenue',  
dense_rank() over (order by sum(total_amount) desc) 
from sales 
group by customer_name
LIMIT 5;
