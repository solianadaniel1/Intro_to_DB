-- Create the database if it does not exist
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- Use the created database
USE alx_book_store;

-- Drop tables if they exist to avoid errors on re-running the script
DROP TABLE IF EXISTS Order_Details;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Books;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Authors;


CREATE TABLE Books(
book_id INT PRIMARY_KEY,
title VARCHAR(130),
price DOUBLE,
publication_date DATE,
FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);
CREATE TABLE Authors(
author_id INT PRIMARY_KEY,
author_name VARCHAR(215)
);
CREATE TABLE Customers(
customer_id INT PRIMARY_KEY,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT
);
CREATE TABLE Orders(
order_id INT PRIMARY_KEY,
order_date DATE,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE Order_Details(
orderdetail_id INT PRIMARY KEY,
FOREIGN KEY (order_id) REFERENCES Orders(order_id)
FOREIGN KEY (book_id) REFERENCES Books(book_id)
quantity DOUBLE
);
