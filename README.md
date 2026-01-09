# 📚 Online Book Store Analysis - SQL Project
<img width="1033" height="624" alt="image" src="https://github.com/user-attachments/assets/7e569d40-e976-4f47-9ffd-02033ff02095" />
<img width="1442" height="626" alt="image" src="https://github.com/user-attachments/assets/a63f78f9-71a3-41f0-9e39-fadd0fd1f516" />

## Project Overview
Project Title: Online Book Store Data Analysis
Database: online_book_store_db

This project demonstrates SQL skills for analyzing an online bookstore database. It includes database creation, data import from CSV files, and comprehensive data analysis using various SQL queries to extract business insights.

## Objectives

Set up a relational database for an online bookstore
Import data from CSV files into PostgreSQL
Perform exploratory data analysis (EDA)
Answer business questions using SQL queries
Analyze sales patterns, customer behavior, and inventory management

# Database Setup
Database Creation: The project starts by creating a database named online_book_store.
Table Creation: Three tables are created to store the bookstore data:

Books Table: Stores book information including Book ID, Title, Author, Genre, Published Year, Price, and Stock quantity.
Customers Table: Contains customer details with Customer ID, Name, Email, Phone, City, and Country.
Orders Table: Records order transactions with Order ID, Customer ID, Book ID, Order Date, Quantity, and Total Amount. This table includes foreign key relationships connecting to both Books and Customers tables.

<img width="1344" height="686" alt="image" src="https://github.com/user-attachments/assets/5a6bb668-d974-4cca-9320-68218de4574b" />

# Data Analysis & Business Questions

<img width="1207" height="294" alt="image" src="https://github.com/user-attachments/assets/d3308380-9e97-43aa-b165-3401a7055343" />
<img width="858" height="735" alt="image" src="https://github.com/user-attachments/assets/a784e566-69d4-48c7-91d3-0e8c2cd6c77a" />
<img width="1227" height="327" alt="image" src="https://github.com/user-attachments/assets/fe5a7670-b83b-4501-8a0e-36d5ab623093" />
<img width="727" height="761" alt="image" src="https://github.com/user-attachments/assets/6d65ff92-6b89-4413-a913-b5cf0adde289" />
<img width="997" height="299" alt="image" src="https://github.com/user-attachments/assets/4b38e1ab-d419-4523-bd3c-5dc140db74d2" />
<img width="807" height="744" alt="image" src="https://github.com/user-attachments/assets/e7f49e21-2cbf-445a-94f0-ce98ed9c2428" />
<img width="1115" height="251" alt="image" src="https://github.com/user-attachments/assets/36bdd9d5-3991-4fca-965f-17d76d340b13" />
<img width="859" height="664" alt="image" src="https://github.com/user-attachments/assets/4c848b1d-cda2-4a8f-bc52-05f1605034b1" />

#  Key Findings

✅ Sales Insights:
Identified total revenue and best-selling books
Analyzed genre-wise sales performance
Found peak ordering periods (November 2023)

✅ Customer Behavior:
Discovered loyal customers with multiple orders
Identified high-value customers by spending
Analyzed geographic distribution across cities and countries

✅ Inventory Status:
Calculated remaining stock after orders
Identified books with low inventory requiring restocking
Tracked stock movement and order fulfillment

✅ Author & Genre Trends:
Ranked authors by total sales quantity
Compared pricing across different genres (Fantasy books average price analyzed)
Identified most popular categories and their performance


# 🎓 Conclusion
This project demonstrates fundamental SQL skills essential for data analysis in e-commerce and retail domains. Through systematic analysis of books, customers, and orders data, I've showcased the ability to:

Design and implement relational database structures
Import and manage real-world data from CSV files
Write complex queries using JOINs, aggregations, and subqueries
Extract actionable business insights from raw data
Perform inventory management and sales trend analysis

The analysis provides valuable insights into customer purchasing patterns, inventory optimization, and revenue generation that can drive business decisions for an online bookstore.
