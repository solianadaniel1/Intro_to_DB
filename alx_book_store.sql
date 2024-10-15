CREATE DATABASE alx_book_store;

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
quality DOUBLE
);

