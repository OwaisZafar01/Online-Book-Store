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

COPY Books (Book_ID, Title, Author, Genre, Published_Year, Price, Stock)
FROM 'D:/postgreSQL/30 Day - SQL Practice Files/Books.csv'
WITH (FORMAT csv, HEADER true);


COPY Customers (Customer_ID, Name, Email, Phone, City, Country)
FROM 'D:/postgreSQL/30 Day - SQL Practice Files/Customers.csv'
WITH (FORMAT csv, HEADER true);

COPY Orders (Order_ID, Customer_ID, Book_ID, Order_Date, Quantity, Total_Amount)
FROM 'D:/postgreSQL/30 Day - SQL Practice Files/Orders.csv'
WITH (FORMAT csv, HEADER true);

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;

-- 1)
SELECT *
FROM Books
WHERE genre = 'Fiction';

-- 2)
SELECT *
FROM Books
WHERE published_year > 1950;

-- 3)
SELECT *
FROM Customers
WHERE country = 'Canada';

-- 4)
SELECT *
FROM Orders
WHERE EXTRACT(YEAR FROM order_date) = 2023
AND
EXTRACT(MONTH FROM order_date) = 11;

SELECT *
FROM Orders
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30';

-- 5)
SELECT SUM(stock)
FROM Books;

-- 6)
SELECT *
FROM Books
WHERE price = (SELECT MAX(price) FROM Books);

SELECT *
FROM Books
ORDER BY price DESC
LIMIT 1;

-- 7)
SELECT *
FROM orders
WHERE quantity > 1;

-- 8)
SELECT * 
FROM orders
WHERE total_amount > 20.00;

-- 9)
SELECT DISTINCT(genre)
FROM Books;

-- 10)
SELECT *
FROM Books
ORDER BY stock
LIMIT 1;

-- 11)
SELECT SUM(total_amount) AS Revenue
FROM Orders;

-- 12)
SELECT genre, SUM(quantity) AS Total_books
FROM Books b
INNER JOIN Orders o
ON b.book_id = o.book_id
GROUP BY genre;

-- 13)
SELECT ROUND(AVG(price),2) AS average_price
FROM Books
WHERE genre = 'Fantasy';

-- 14)
SELECT c.name, COUNT(*) AS Total_orders
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING COUNT(*) >= 2
ORDER BY Total_orders DESC;

-- 15)
SELECT b.title, COUNT(*) AS no_of_orders
FROM orders o
INNER JOIN Books b
ON o.book_id = b.book_id
GROUP BY b.title
ORDER BY no_of_orders DESC
LIMIT 1;

-- 16)
SELECT title, price FROM Books
WHERE genre = 'Fantasy'
ORDER BY price DESC
LIMIT 3;

-- 17)
SELECT b.author, SUM(o.quantity) Total_Quantity FROM Books b
INNER JOIN Orders o
ON b.book_id = o.book_id
GROUP BY b.author
ORDER BY Total_Quantity DESC;

-- 18)
Select DISTINCT c.city, total_amount FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
WHERE o.total_amount > 30;

-- 19)
Select c.name, SUM(total_amount) AS total_spend FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spend DESC;

-- 20)
SELECT b.book_id, b.title, b.stock,
COALESCE(SUM(o.quantity), 0) AS Order_Quantity,
b.stock - COALESCE(SUM(o.quantity), 0) AS remaining_stock
FROM Books b
LEFT JOIN Orders o
ON b.book_id = o.book_id
GROUP BY b.book_id
ORDER BY book_id;
