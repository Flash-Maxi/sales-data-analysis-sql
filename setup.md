# Setup Guide

This guide explains how to run the **SQL + Power BI Sales Data Analysis Project** using MySQL Workbench.

---

## 🧰 Prerequisites

Ensure the following tools are installed:

* MySQL Server (8.0 or above recommended)
* MySQL Workbench
* (Optional) Power BI Desktop for dashboard visualization

---

## 📁 Project Structure

```text
sales-data-analysis-sql-powerbi/
│
├── data/
│   ├── sales_data_raw.csv
│   └── sales_data_cleaned.csv
│
├── sql/
│   ├── sales_data_cleaning.sql
│   └── sales_eda.sql
│
├── powerbi/
│   └── sales_dashboard.pbix
│
├── images/
│
├── README.md
├── setup.md
└── insights.md
```

---

## ⚙️ Step 1: Create Database

Run the following commands in MySQL Workbench:

```sql
CREATE DATABASE sales_project;
USE sales_project;
```

---

## 📥 Step 2: Import Dataset

Import the raw dataset into MySQL:

* **File:** `data/sales_data_raw.csv`
* **Table Name:** `sales_data`

Use:

* MySQL Workbench → *Table Data Import Wizard* (recommended)

---

## 🧹 Step 3: Run Data Cleaning Script

Open and execute:

```text
sql/sales_data_cleaning.sql
```

This script will:

* Create a working table (`sales_data_1`)
* Remove duplicates and handle null values
* Standardize and clean data
* Apply business validation rules

---

## 📊 Step 4: Run EDA Queries

Open and execute:

```text
sql/sales_eda.sql
```

This will generate insights on:

* Revenue trends
* Product and category performance
* Regional and customer analysis
* Payment method and sales channel insights

---

## 📈 Step 5: Open Power BI Dashboard (Optional)

Open:

```text
powerbi/sales_dashboard.pbix
```

This dashboard includes:

* KPI metrics (Revenue, Quantity, Top Performers)
* Sales trend analysis
* Category and region comparisons
* Customer and payment insights

---

## 📤 Output

The cleaned dataset will be stored in:

```text
sales_data_1
```

You can export it as:

```text
data/sales_data_cleaned.csv
```

---

## 📝 Notes

* Ensure the imported table name is exactly `sales_data`
* Update SQL scripts if using a different table name
* Dataset is used for learning and analysis purposes

---

## ⚠️ Troubleshooting

### Issue: Date conversion error

Ensure the correct format is used:

```sql
STR_TO_DATE(Sale_Date, '%Y-%m-%d')
```

---

### Issue: Data not importing correctly

* Check CSV encoding (UTF-8 recommended)
* Verify delimiter settings

---

### Issue: Update restriction error

Disable safe updates temporarily:

```sql
SET SQL_SAFE_UPDATES = 0;
```

---

## 👤 Author

**Rishi Raj**
