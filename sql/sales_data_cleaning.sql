-- sales project

select *
from sales_data;

-- created a saperate table for cleaning

create table sales_data_1
like sales_data;

insert into sales_data_1
select*
from sales_data;

-- checking for dublictae values

with dubl_cte as(
	select *, row_number() over( partition by Product_ID, Sale_Date, Sales_Rep,Region,Sales_Amount,
							Quantity_Sold,Product_Category,Unit_Cost,Unit_Price,Customer_Type,
                            Discount,Payment_Method,Sales_Channel,Region_and_Sales_Rep) row_num
	from sales_data_1
)
select *
from dubl_cte 
where row_num>1;

select *
from sales_data_1;

-- cleccking for any null values

select *
from sales_data_1
where Sale_Date     is null
   or Product_ID    is null
   or Sales_Amount  is null
   or Quantity_Sold is null
   or Unit_Cost     is null
   or Unit_Price   is null;
   
   
-- checking for any name spelling error

select distinct Sales_Rep
from sales_data_1;

select distinct Region
from sales_data_1;

select distinct Product_Category
from sales_data_1;

select distinct Customer_Type
from sales_data_1;

select distinct Payment_Method
from sales_data_1;

select distinct Sales_Channel
from sales_data_1;

-- cleacking date coloun for any irregular date formate
 
select Sale_Date, str_to_date(Sale_Date,'%Y-%m-%d')
from sales_data_1;

update sales_data_1
set Sale_Date = str_to_date(Sale_Date,'%Y-%m-%d');

-- changing data type of Sale_Date from text to date

alter table sales_data_1
modify Sale_Date date; 

select *
from sales_data_1;					

-- rounding off all the amounts by 2 for clean visuals of data
select
    round(Sales_Amount, 2) as Sales_Amount,
    round(Unit_Cost, 2) as Unit_Cost,
    round(Unit_Price, 2) as Unit_Price,
    round(Discount, 2) as Discount
from sales_data_1;
				
update sales_data_1
set Sales_Amount=round(Sales_Amount, 2) ,
    Unit_Cost=round(Unit_Cost, 2),
    Unit_Price=round(Unit_Price, 2),
    Discount=round(Discount, 2);
    
select *
from sales_data_1;

-- checking if unit_price is more than unit_cost or not

select *
from sales_data_1
where Unit_Cost > Unit_Price 
;

-- checking if discount is btw 0-1 or not and product sold is in not neagtive

select *
from sales_data_1
where Discount>1 or Quantity_Sold <0;

select *
from sales_data_1;

-- removing useless coloum from the table

alter table sales_data_1
drop column Region_and_Sales_Rep;

select *
from sales_data_1;




