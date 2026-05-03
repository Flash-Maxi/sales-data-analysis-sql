-- now exploring the data

-- Use cleaned table
SELECT *
FROM sales_data_1;

-- Total Revenue
select round(sum(Sales_Amount),2) as Total_Revenue
from sales_data_1;

-- Total Quantity Sold
select sum(Quantity_Sold) as Total_Quantity
from sales_data_1;

-- Average Order Value
select round(avg(Sales_Amount),3) as Avg_Order_Value
from sales_data_1;

-- Total Profit (Estimated)
select round(sum((Unit_Price - Unit_Cost) * Quantity_Sold),2) as Total_Profit
from sales_data_1;

-- Year-wise Sales Trend
select year(Sale_Date) as Year,
       round(SUM(Sales_Amount),2) as Total_Sales
from sales_data_1
group by year(Sale_Date)
order by Year;

-- Monthly Sales Trend
select date_format(Sale_Date, '%Y-%m') as Month,
       round(sum(Sales_Amount),2) as Total_Sales
from sales_data_1
group by Month
order by Month;

-- Top 5 Products by Revenue
select Product_ID,
       SUM(Sales_Amount) as Total_Revenue
from sales_data_1
group by Product_ID
order by Total_Revenue desc
limit 5;

-- Sales by Product Category
select Product_Category,
       round(sum(Sales_Amount),2) as Total_Revenue
from sales_data_1
group by Product_Category
order by Total_Revenue desc;

-- Sales by Region
select Region,
       round(sum(Sales_Amount),2) as Total_Revenue
from sales_data_1
group by Region
order by Total_Revenue desc;


-- Top 5 Sales Representatives
select Sales_Rep,
       round(sum(Sales_Amount),2) as Total_Revenue
from sales_data_1
group by Sales_Rep
order by Total_Revenue desc
limit 5;


-- Sales by Customer Type
select Customer_Type,
       round(sum(Sales_Amount),2) as Total_Revenue
from sales_data_1
group by Customer_Type
order by Total_Revenue desc;


-- Revenue by Payment Method
select Payment_Method,
       round(sum(Sales_Amount),2)as Total_Revenue
from sales_data_1
group by Payment_Method
order by  Total_Revenue desc;

-- Revenue by Sales Channel
select Sales_Channel,
       round(sum(Sales_Amount),2) as Total_Revenue
from sales_data_1
group by Sales_Channel
order by Total_Revenue desc;

-- Average Discount by Category
select Product_Category,
      round(avg(Discount),2) as Avg_Discount
from sales_data_1
group by Product_Category
order by Avg_Discount desc;

-- Profit by Product Category
select Product_Category,
       round(sum((Unit_Price - Unit_Cost) * Quantity_Sold),2) as Total_Profit
from sales_data_1
group by Product_Category
order by Total_Profit desc;

-- Top 10 highest sales transactions
select *
from sales_data_1
order by Sales_Amount desc
limit 10;
