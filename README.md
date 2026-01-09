# 📚 Online Book Store Analysis - SQL Project

<div align="center">
  
![SQL](https://img.shields.io/badge/SQL-PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![Database](https://img.shields.io/badge/Database-Design-orange?style=for-the-badge&logo=database&logoColor=white)
![Analysis](https://img.shields.io/badge/Data-Analysis-success?style=for-the-badge&logo=analytics&logoColor=white)

</div>

---

<img width="1033" height="624" alt="image" src="https://github.com/user-attachments/assets/7e569d40-e976-4f47-9ffd-02033ff02095" />
<img width="1442" height="626" alt="image" src="https://github.com/user-attachments/assets/a63f78f9-71a3-41f0-9e39-fadd0fd1f516" />

## Project Overview

This project demonstrates SQL skills for analyzing an online bookstore database. It includes database creation, data import from CSV files, and comprehensive data analysis using various SQL queries to extract business insights.

**Database:** `online_book_store_db`  
**Tools:** PostgreSQL, SQL

---

## Objectives

- Set up relational database for online bookstore
- Import data from CSV files into PostgreSQL
- Perform exploratory data analysis (EDA)
- Answer business questions using SQL queries
- Analyze sales patterns, customer behavior and inventory

---

## Database Structure

### Schema Creation

```sql
CREATE TABLE Books (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10,2),
    Stock INT
);

CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(255),
    Phone INT,
    City VARCHAR(100),
    Country VARCHAR(100)
);

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10,2)
);
```

<table>
<tr>
<td width="33%" valign="top">

### Books Table
- `Book_ID` (PK)
- `Title`
- `Author`
- `Genre`
- `Published_Year`
- `Price`
- `Stock`

</td>
<td width="33%" valign="top">

### Customers Table
- `Customer_ID` (PK)
- `Name`
- `Email`
- `Phone`
- `City`
- `Country`

</td>
<td width="33%" valign="top">

### Orders Table
- `Order_ID` (PK)
- `Customer_ID` (FK)
- `Book_ID` (FK)
- `Order_Date`
- `Quantity`
- `Total_Amount`

</td>
</tr>
</table>

### Entity Relationship Diagram

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

## Business Questions & SQL Queries

### 1. What is the total revenue generated?

```sql
SELECT SUM(total_amount) AS Revenue
FROM Orders;
```

### 2. Which book is the best seller?

```sql
SELECT b.title, COUNT(*) AS no_of_orders
FROM orders o
INNER JOIN Books b ON o.book_id = b.book_id
GROUP BY b.title
ORDER BY no_of_orders DESC
LIMIT 1;
```

### 3. Who are the most loyal customers?

```sql
SELECT c.name, COUNT(*) AS Total_orders
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING COUNT(*) >= 2
ORDER BY Total_orders DESC;
```

### 4. What is the current inventory status?

```sql
SELECT b.book_id, b.title, b.stock,
       COALESCE(SUM(o.quantity), 0) AS Order_Quantity,
       b.stock - COALESCE(SUM(o.quantity), 0) AS remaining_stock
FROM Books b
LEFT JOIN Orders o ON b.book_id = o.book_id
GROUP BY b.book_id
ORDER BY book_id;
```

### 5. Which authors have the highest sales?

```sql
SELECT b.author, SUM(o.quantity) AS Total_Quantity
FROM Books b
INNER JOIN Orders o ON b.book_id = o.book_id
GROUP BY b.author
ORDER BY Total_Quantity DESC;
```

### 6. Who are the top spending customers?

```sql
SELECT c.name, SUM(total_amount) AS total_spend
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spend DESC;
```

---

## Key Findings

<table>
<tr>
<td width="50%" valign="top">

**Sales Insights**
- Total Revenue Calculated
- Best-Selling Books Identified
- Genre Performance Analyzed
- Peak Period: November 2023

**Customer Behavior**
- Loyal Customers Tracked
- High-Value Customers Found
- Geographic Distribution Mapped
- Purchase Frequency Analyzed

</td>
<td width="50%" valign="top">

**Inventory Status**
- Current Stock Calculated
- Low Stock Alerts Generated
- Stock Movement Tracked
- Order Fulfillment Monitored

**Author & Genre Trends**
- Top Authors Ranked
- Genre Pricing Compared
- Popular Categories Found
- Sales Contribution Analyzed

</td>
</tr>
</table>

---

## Conclusion

This project showcases end-to-end SQL data analysis for an e-commerce bookstore. From database design to extracting meaningful insights, the analysis reveals customer behavior patterns, sales trends, and inventory optimization opportunities that drive informed business decisions.

---
