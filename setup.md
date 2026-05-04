# Setup Guide

This guide explains how to run the Sales Data Cleaning and EDA project using MySQL.

---

## Prerequisites

Ensure you have the following installed:
- MySQL Server (8.0+ recommended)
- MySQL Workbench

---

## Project Structure

sales-data-analysis-sql/
│
├── data/
│   ├── sales_data_raw.csv
│   └── sales_data_cleaned.csv
│
├── sql/
│   ├── sales_data_cleaning.sql
│   └── sales_eda.sql
│
├── README.md
└── setup.md

---

## Step 1: Create Database

Run the following in MySQL Workbench:

```sql
CREATE DATABASE sales_project;
USE sales_project;
```
## Step 2: Import Dataset
### Import the raw dataset:
File: data/sales_data_raw.csv

Table name: sales_data

Use:
Table Data Import Wizard (recommended)

## Step 3: Run Data Cleaning Script
Open and execute:
sql/sales_data_cleaning.sql

This will:
Create a working table (sales_data_1)
Clean and standardize the dataset
Apply validation checks

## Step 4: Run EDA Queries
Open and execute:
sql/sales_eda.sql

This will generate insights on:
Revenue trends
Product and category performance
Regional and customer analysis

## Output

Cleaned dataset will be stored in:
sales_data_1

You can export it as:
data/sales_data_cleaned.csv

### Notes
Ensure table name is sales_data before running queries
Modify script if using a different table name
Dataset is used for learning and analysis purposes

### Troubleshooting
Issue: Date conversion error

### Check format:
STR_TO_DATE(Sale_Date, '%Y-%m-%d')

### Issue: No data imported
Verify CSV encoding (UTF-8) and delimiter

###vIssue: Update errors
SET SQL_SAFE_UPDATES = 0;
