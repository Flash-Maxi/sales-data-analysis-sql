# SQL Sales Data Cleaning and EDA Project

## 📌 Project Overview

This project focuses on cleaning and analyzing sales data using MySQL. The dataset contains transaction-level information such as product details, sales representatives, regions, revenue, quantity sold, customer type, discounts, payment methods, and sales channels.

The objective of this project was to:

* Clean and standardize raw sales data
* Validate data quality using business rules
* Perform exploratory data analysis (EDA) to uncover trends and insights

---

## 🛠️ Tools Used

* MySQL
* MySQL Workbench

---

## 🧹 Data Cleaning (SQL)

The raw dataset contained inconsistencies and potential data quality issues. The following steps were performed:

* Created a staging table to preserve original data
* Checked for duplicate records using `ROW_NUMBER()`
* Validated and inspected null values in key columns
* Reviewed categorical fields for inconsistencies
* Converted `Sale_Date` from text format to proper `DATE` format
* Rounded numeric fields (`Sales_Amount`, `Unit_Cost`, `Unit_Price`, `Discount`) to 2 decimal places
* Applied business validations:

  * Ensured `Unit_Price ≥ Unit_Cost`
  * Verified `Discount` is between 0 and 1
  * Ensured `Quantity_Sold` is non-negative
* Removed unnecessary column `Region_and_Sales_Rep`

---

## 📊 Exploratory Data Analysis (SQL)

Performed SQL-based analysis to extract key business insights:

### 🔹 Key Analyses:

* Total revenue, total quantity sold, and average order value
* Profit estimation using `(Unit_Price - Unit_Cost) × Quantity_Sold`
* Sales trends by year and month
* Top-performing products and categories
* Sales distribution across regions
* Performance of sales representatives
* Revenue by customer type
* Payment method and sales channel analysis
* Discount impact on profitability

---

## 📁 Project Files

* `data/sales_data_raw.csv` → Raw dataset
* `data/sales_data_cleaned.csv` → Cleaned dataset
* `sql/sales_data_cleaning.sql` → Data cleaning queries
* `sql/sales_eda.sql` → Exploratory data analysis queries
* `setup.md` → Setup and execution guide

---

## 📂 Dataset Columns

* Product_ID
* Sale_Date
* Sales_Rep
* Region
* Sales_Amount
* Quantity_Sold
* Product_Category
* Unit_Cost
* Unit_Price
* Customer_Type
* Discount
* Payment_Method
* Sales_Channel
* Region_and_Sales_Rep

---

## 🔄 Before vs After Cleaning

| Aspect            | Raw Data     | Cleaned Data          |
| ----------------- | ------------ | --------------------- |
| Duplicates        | Present      | Removed               |
| Date Format       | Text         | Proper DATE           |
| Null Values       | Present      | Checked & handled     |
| Numeric Precision | Inconsistent | Rounded to 2 decimals |
| Data Quality      | Inconsistent | Standardized          |

---

## 🎯 Key Insights

* Sales trends show clear time-based patterns across months and years
* Certain regions contribute significantly more to total revenue
* A small number of products drive a large portion of sales
* Discount strategies have a measurable impact on profitability
* Customer type and sales channel influence revenue distribution

---

## 🚀 Outcome

The raw dataset was transformed into a clean, structured, and analysis-ready format.
The cleaned dataset (`sales_data_cleaned.csv`) can be directly used for dashboards in Power BI or Excel.

This project demonstrates:

* Strong SQL data cleaning techniques
* Ability to validate and standardize real-world datasets
* Practical exploratory data analysis skills
* Understanding of key business metrics such as revenue and profit

---

## 👤 Author

**Rishi Raj**
