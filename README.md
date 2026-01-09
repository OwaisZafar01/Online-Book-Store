# 📚 Online Book Store Analysis - SQL Project

<div align="center">
  
![SQL](https://img.shields.io/badge/SQL-PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![Database](https://img.shields.io/badge/Database-Design-orange?style=for-the-badge&logo=database&logoColor=white)
![Analysis](https://img.shields.io/badge/Data-Analysis-success?style=for-the-badge&logo=analytics&logoColor=white)

</div>

---

## 📋 Project Overview

**Project Title:** Online Book Store Data Analysis  
**Database:** `online_book_store_db`  
**Tools Used:** PostgreSQL, SQL

This project demonstrates comprehensive SQL skills for analyzing an online bookstore database. It includes database creation, data import from CSV files, and extensive data analysis using various SQL queries to extract actionable business insights.

---

## 🎯 Objectives

<table>
<tr>
<td width="50%">

- 🗄️ Set up a relational database for an online bookstore
- 📥 Import data from CSV files into PostgreSQL
- 🔍 Perform exploratory data analysis (EDA)

</td>
<td width="50%">

- 💡 Answer business questions using SQL queries
- 📊 Analyze sales patterns & customer behavior
- 📦 Manage inventory and track stock levels

</td>
</tr>
</table>

---

## 🏗️ Database Setup

### Database Creation
The project starts by creating a database named **`online_book_store`**

### 📊 Table Structure

<details>
<summary><b>📚 Books Table</b></summary>
<br>

Stores comprehensive book information:
- `Book_ID` (Primary Key)
- `Title`
- `Author`
- `Genre`
- `Published_Year`
- `Price`
- `Stock`

</details>

<details>
<summary><b>👥 Customers Table</b></summary>
<br>

Contains customer details:
- `Customer_ID` (Primary Key)
- `Name`
- `Email`
- `Phone`
- `City`
- `Country`

</details>

<details>
<summary><b>🛒 Orders Table</b></summary>
<br>

Records order transactions with relationships:
- `Order_ID` (Primary Key)
- `Customer_ID` (Foreign Key → Customers)
- `Book_ID` (Foreign Key → Books)
- `Order_Date`
- `Quantity`
- `Total_Amount`

</details>

### 🔗 Entity Relationship Diagram

```
┌─────────────┐         ┌──────────────┐         ┌──────────────┐
│   BOOKS     │         │    ORDERS    │         │  CUSTOMERS   │
├─────────────┤         ├──────────────┤         ├──────────────┤
│ Book_ID (PK)│◄────────│ Book_ID (FK) │         │Customer_ID(PK)│
│ Title       │         │Order_ID (PK) │         │ Name         │
│ Author      │         │Customer_ID(FK)│────────►│ Email        │
│ Genre       │         │ Order_Date   │         │ Phone        │
│ Pub_Year    │         │ Quantity     │         │ City         │
│ Price       │         │ Total_Amount │         │ Country      │
│ Stock       │         └──────────────┘         └──────────────┘
└─────────────┘
```

---

## 📈 Data Analysis & Business Questions

This project answers critical business questions through SQL queries:

<div align="center">

| Category | Focus Area |
|----------|-----------|
| 💰 **Revenue Analysis** | Total sales, revenue trends, top products |
| 📚 **Product Performance** | Best-selling books, genre analysis |
| 👥 **Customer Insights** | Loyal customers, spending patterns |
| 📦 **Inventory Management** | Stock levels, reorder points |
| 📅 **Time-based Analysis** | Seasonal trends, peak periods |
| 🌍 **Geographic Analysis** | Sales by location, regional preferences |

</div>

---

## 🔍 Key Findings

### ✅ Sales Insights
```sql
-- Sample findings visualization
📊 Total Revenue: Calculated and tracked
🏆 Best-Selling Books: Identified top performers
📚 Genre Performance: Analyzed sales by category
📅 Peak Period: November 2023 showed highest orders
```

**Key Discoveries:**
- Identified total revenue and best-selling books
- Analyzed genre-wise sales performance
- Found peak ordering periods (November 2023)
- Tracked monthly and seasonal trends

---

### ✅ Customer Behavior
```sql
-- Customer segmentation results
👥 Loyal Customers: Multiple orders tracked
💎 High-Value Customers: Top spenders identified
🌍 Geographic Distribution: City & country analysis
```

**Key Discoveries:**
- Discovered loyal customers with multiple orders
- Identified high-value customers by spending
- Analyzed geographic distribution across cities and countries
- Customer purchase frequency patterns

---

### ✅ Inventory Status
```sql
-- Inventory management insights
📦 Current Stock: Calculated after orders
⚠️  Low Stock Alert: Restocking needed
📊 Stock Movement: Order fulfillment tracked
```

**Key Discoveries:**
- Calculated remaining stock after orders
- Identified books with low inventory requiring restocking
- Tracked stock movement and order fulfillment
- Inventory turnover analysis

---

### ✅ Author & Genre Trends
```sql
-- Author and genre performance
✍️  Top Authors: Ranked by sales quantity
📚 Genre Pricing: Fantasy books avg price analyzed
⭐ Popular Categories: Performance metrics
```

**Key Discoveries:**
- Ranked authors by total sales quantity
- Compared pricing across different genres
- Identified most popular categories and their performance
- Author contribution to revenue

---

## 🎓 Conclusion

This project demonstrates fundamental **SQL skills** essential for data analysis in e-commerce and retail domains. Through systematic analysis of books, customers, and orders data, I've showcased the ability to:

<div align="center">

| Skill Area | Competency Demonstrated |
|------------|------------------------|
| 🗄️ **Database Design** | Design and implement relational database structures |
| 📥 **Data Management** | Import and manage real-world data from CSV files |
| 🔍 **Query Writing** | Write complex queries using JOINs, aggregations, and subqueries |
| 💡 **Business Intelligence** | Extract actionable business insights from raw data |
| 📊 **Analytics** | Perform inventory management and sales trend analysis |

</div>

### 💼 Business Value

The analysis provides valuable insights into:
- 🛒 Customer purchasing patterns
- 📦 Inventory optimization opportunities
- 💰 Revenue generation strategies
- 📈 Sales trend forecasting

These insights can drive data-informed business decisions for an online bookstore.

---

## 🚀 Getting Started

```sql
-- Create Database
CREATE DATABASE online_book_store_db;

-- Connect to Database
\c online_book_store_db

-- Create Tables
-- (See Database Setup section for table schemas)

-- Import CSV Data
COPY books FROM '/path/to/books.csv' CSV HEADER;
COPY customers FROM '/path/to/customers.csv' CSV HEADER;
COPY orders FROM '/path/to/orders.csv' CSV HEADER;
```

---

## 📁 Project Structure

```
online-book-store-sql/
│
├── 📄 README.md
├── 📊 data/
│   ├── books.csv
│   ├── customers.csv
│   └── orders.csv
│
├── 🗄️ schema/
│   └── database_setup.sql
│
├── 🔍 queries/
│   ├── sales_analysis.sql
│   ├── customer_analysis.sql
│   ├── inventory_analysis.sql
│   └── author_genre_analysis.sql
│
└── 📈 results/
    └── analysis_findings.md
```

---

## 🛠️ Technologies Used

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=flat&logo=postgresql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=flat&logo=sql&logoColor=white)
![CSV](https://img.shields.io/badge/CSV-Data-green?style=flat&logo=files&logoColor=white)

---

## 📧 Contact

Feel free to reach out for collaborations or questions!

<div align="center">

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?style=for-the-badge&logo=linkedin)](https://linkedin.com/in/yourprofile)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-black?style=for-the-badge&logo=github)](https://github.com/yourusername)
[![Email](https://img.shields.io/badge/Email-Contact-red?style=for-the-badge&logo=gmail)](mailto:your.email@example.com)

</div>

---

<div align="center">

### ⭐ If you found this project helpful, please consider giving it a star!

**Made with ❤️ and SQL**

</div>
