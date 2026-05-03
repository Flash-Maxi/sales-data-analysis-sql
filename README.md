# Sales Data Cleaning Project using SQL

## Project Overview
This project focuses on cleaning and preparing sales data for analysis using MySQL. The dataset contains sales-related information such as product details, sales representatives, regions, sales amount, quantity sold, customer type, discounts, payment method, and sales channel.

The goal of this project was to transform raw sales data into a clean, structured, and analysis-ready dataset.

## Tools Used
- MySQL
- MySQL Workbench

## Data Cleaning Steps
- Created a separate working table to preserve raw data
- Checked for duplicate records using `ROW_NUMBER()`
- Checked for null values in important columns
- Reviewed categorical columns for spelling or naming inconsistencies
- Converted `Sale_Date` from text format to proper `DATE` format
- Rounded numeric amount fields to 2 decimal places
- Validated business rules such as:
  - Unit cost should not be greater than unit price
  - Discount should be between 0 and 1
  - Quantity sold should not be negative
- Removed unnecessary column `Region_and_Sales_Rep`

## Project Files
- `data/sales_data_raw.csv` → Raw sales dataset
- `data/sales_data_cleaned.csv` → Cleaned dataset after applying SQL transformations
- `sql/sales_data_cleaning.sql` → SQL queries used for data cleaning
- `setup.md` → Steps to run this project

## Dataset Columns
The dataset includes:
- Product_ID
- Sale_Date
- Sales_Rep
- Region
- Sales_Amount
- Quantity_Sold
- Product_Category
- Unit_Cost
- Unit_Price
- Customer_Type
- Discount
- Payment_Method
- Sales_Channel
- Region_and_Sales_Rep

## Before vs After Cleaning

| Aspect | Raw Data | Cleaned Data |
|-------|--------|-------------|
| Duplicates | Present | Removed |
| Date Format | Text | Proper DATE |
| Null Values | Present | Checked & handled |
| Numeric Precision | Inconsistent | Rounded to 2 decimals |
| Data Quality | Inconsistent | Standardized |

## Outcome
The raw sales dataset was cleaned and transformed into a more reliable format, making it ready for further exploratory data analysis and dashboard creation.
The cleaned dataset (`sales_data_cleaned.csv`) can be directly used for Power BI or Excel dashboards.

## Author
Rishi Raj
