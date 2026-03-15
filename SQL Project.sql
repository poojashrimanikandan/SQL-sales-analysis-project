----ecom_project;
use ecom_project;
select * from dbo.[sales ecom]
----deep dive into this data and generate insights using SQL
----min 15 insights
-----total revenue generated
select sum(Sales) as total_sales from [sales ecom]
-----total profit
select sum(Profit) as total_profit from [sales ecom]
-----total orders
select count(distinct Order_ID) as total_orders from [sales ecom]
-----top 5 states by sales
select top(5)* from [sales ecom] order by Sales desc
-----top 5 cities by profit
select top(5)* from [sales ecom] order by Profit desc
-----sales by region
select region,sales from [sales ecom] 
------most profitable category
select category,sum(profit) as total_profit from [sales ecom] group by Category order by total_profit desc
-----highest selling sub-category
select top 1 sub_category,sum(sales) as total_sales from [sales ecom] group by Sub_Category order by total_sales desc
-----loss making products
select top 1 product_name,sum(profit) as total_profit from [sales ecom] group by product_name order by total_profit asc
-----monthly sales trend
select YEAR(order_date) as year,MONTH(order_date) as month,sum(sales) as month_sales from [sales ecom] group by YEAR(order_date),MONTH(order_date) order by year,month
-------avg discount given
select AVG(discount) as avg_discount from [sales ecom]
------top 5 customers by revenue
select top 5 customer_name,sum(sales) as total_sales from [sales ecom] group by customer_name order by total_sales desc
-----counting how many orders using ship mode
select ship_mode,count(*) as total_orders from [sales ecom] group by Ship_Mode
-----profit %
select (sum(profit)/sum(sales))*100 as profit_margin from [sales ecom]



