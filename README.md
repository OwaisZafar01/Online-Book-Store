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
- Analyze sales patterns, customer behavior & inventory

---

## Database Structure

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

### 👥 Customers Table
- `Customer_ID` (PK)
- `Name`
- `Email`
- `Phone`
- `City`
- `Country`

</td>
<td width="33%" valign="top">

### 🛒 Orders Table
- `Order_ID` (PK)
- `Customer_ID` (FK)
- `Book_ID` (FK)
- `Order_Date`
- `Quantity`
- `Total_Amount`

</td>
</tr>
</table>

### 🔗 Entity Relationship Diagram

```
┌─────────────┐         ┌──────────────┐         ┌──────────────┐
│   BOOKS     │         │    ORDERS    │         │  CUSTOMERS   │
├─────────────┤         ├──────────────┤         ├──────────────┤
│ Book_ID (PK)│◄────────│ Book_ID (FK) │         │Customer_ID(PK)│
│ Title       │         │Order_ID (PK) │         │ Name         │
│ Author      │         │Customer_ID(FK)│────────►│ Email       │
│ Genre       │         │ Order_Date   │         │ Phone        │
│ Pub_Year    │         │ Quantity     │         │ City         │
│ Price       │         │ Total_Amount │         │ Country      │
│ Stock       │         └──────────────┘         └──────────────┘
└─────────────┘
```

---

## Key Findings

<table>
<tr>
<td width="50%" valign="top">

### Sales Insights
```
Total Revenue Calculated
Best-Selling Books Identified
Genre Performance Analyzed
Peak Period: November 2023
```

### Customer Behavior
```
Loyal Customers Tracked
High-Value Customers Found
Geographic Distribution Mapped
Purchase Frequency Analyzed
```

</td>
<td width="50%" valign="top">

### Inventory Status
```
Current Stock Calculated
Low Stock Alerts
Stock Movement Tracked
Order Fulfillment Monitored
```

### Author & Genre Trends
```
Top Authors Ranked
Genre Pricing Compared
Popular Categories Found
Sales Contribution Analyzed
```

</td>
</tr>
</table>

---

---

## 🎓 Conclusion

This project showcases end-to-end SQL data analysis for an e-commerce bookstore. From database design to extracting meaningful insights, the analysis reveals customer behavior patterns, sales trends, and inventory optimization opportunities that drive informed business decisions.

---



























# 📚 Online Book Store Analysis - SQL Project

<div align="center">
  
![SQL](https://img.shields.io/badge/SQL-PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![Database](https://img.shields.io/badge/Database-Design-orange?style=for-the-badge&logo=database&logoColor=white)
![Analysis](https://img.shields.io/badge/Data-Analysis-success?style=for-the-badge&logo=analytics&logoColor=white)

</div>

---

## 📋 Project Overview

This project demonstrates SQL skills for analyzing an online bookstore database. It includes database creation, data import from CSV files, and comprehensive data analysis using various SQL queries to extract business insights.

**Database:** `online_book_store_db`  
**Tools:** PostgreSQL, SQL

---

## 🎯 Objectives

- 🗄️ Set up relational database for online bookstore
- 📥 Import data from CSV files into PostgreSQL
- 🔍 Perform exploratory data analysis (EDA)
- 💡 Answer business questions using SQL queries
- 📊 Analyze sales patterns, customer behavior & inventory

---

## 🏗️ Database Structure

<table>
<tr>
<td width="33%" valign="top">

### 📚 Books Table
- `Book_ID` (PK)
- `Title`
- `Author`
- `Genre`
- `Published_Year`
- `Price`
- `Stock`

</td>
<td width="33%" valign="top">

### 👥 Customers Table
- `Customer_ID` (PK)
- `Name`
- `Email`
- `Phone`
- `City`
- `Country`

</td>
<td width="33%" valign="top">

### 🛒 Orders Table
- `Order_ID` (PK)
- `Customer_ID` (FK)
- `Book_ID` (FK)
- `Order_Date`
- `Quantity`
- `Total_Amount`

</td>
</tr>
</table>

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

## 🔍 Key Findings

<table>
<tr>
<td width="50%" valign="top">

### 💰 Sales Insights
```
📊 Total Revenue Calculated
🏆 Best-Selling Books Identified
📚 Genre Performance Analyzed
📅 Peak Period: November 2023
```

### 👥 Customer Behavior
```
👥 Loyal Customers Tracked
💎 High-Value Customers Found
🌍 Geographic Distribution Mapped
📈 Purchase Frequency Analyzed
```

</td>
<td width="50%" valign="top">

### 📦 Inventory Status
```
📦 Current Stock Calculated
⚠️  Low Stock Alerts
📊 Stock Movement Tracked
✅ Order Fulfillment Monitored
```

### 📚 Author & Genre Trends
```
✍️  Top Authors Ranked
💰 Genre Pricing Compared
⭐ Popular Categories Found
📈 Sales Contribution Analyzed
```

</td>
</tr>
</table>

---

## 🎓 Conclusion

This project showcases end-to-end SQL data analysis for an e-commerce bookstore. From database design to extracting meaningful insights, the analysis reveals customer behavior patterns, sales trends, and inventory optimization opportunities that drive informed business decisions.

---


