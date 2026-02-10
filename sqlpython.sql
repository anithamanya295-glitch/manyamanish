create database manya1;
use manya1;
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50)
);
ALTER TABLE Employees ADD Salary DECIMAL(10,2);
ALTER TABLE Employees MODIFY Name VARCHAR(150);
ALTER TABLE Employees CHANGE Department Dept VARCHAR(50);

CREATE TABLE Salary (
ALTER TABLE Employees DROP COLUMN Salary;
);

ALTER TABLE Employees DROP COLUMN Salary;
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Course VARCHAR(50)
);


CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50)
);

update staff
set age=35
where id=1;

drop table student;
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(200) NOT NULL,
    ReleaseYear INT,
    Genre VARCHAR(50),
    Director VARCHAR(100)
);

CREATE TABLE Actors (
    ActorID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    BirthYear INT
);


CREATE TABLE MovieActors (
    MovieID INT,
    ActorID INT,
    Role VARCHAR(100),
    PRIMARY KEY (MovieID, ActorID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (ActorID) REFERENCES Actors(ActorID)
);


INSERT INTO Movies (MovieID, Title, ReleaseYear, Genre, Director)
VALUES (1, 'Inception', 2010, 'Sci-Fi', 'Christopher Nolan');

INSERT INTO Actors (ActorID, Name, BirthYear)
VALUES (1, 'Leonardo DiCaprio', 1974);

INSERT INTO MovieActors (MovieID, ActorID, Role)
VALUES (1, 1, 'Dom Cobb');

SELECT DISTINCT Genre, Director FROM Movies;

SELECT * FROM Customers

WHERE CustomerName LIKE 'A%';

SELECT Name FROM Students
WHERE Name LIKE '_a%';

SELECT Genre, COUNT(*) AS MovieCount, SUM(Revenue) AS TotalRevenue
FROM Movies
GROUP BY Genre;

SELECT Customer, SUM(Amount) AS TotalSpent
FROM Orders
GROUP BY Customer;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    HireDate DATE
);


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    Address VARCHAR(200),
    City VARCHAR(50),
    Country VARCHAR(50)
);

select name,fees
from student
where id =3;


select avg(fees)
from student
group by dept;

select*
from StudentFees



CREATE TABLE StudentFees (
    FeeID INT PRIMARY KEY,
    StudentID INT NOT NULL,
    StudentName VARCHAR(100) NOT NULL,
    Course VARCHAR(50),
    FeeAmount DECIMAL(10,2) NOT NULL,
    PaidAmount DECIMAL(10,2) DEFAULT 0.00,
    DueAmount DECIMAL(10,2),
    PaymentDate DATE,
    Status VARCHAR(20) CHECK (Status IN ('Paid', 'Pending', 'Partial'))
);
INSERT INTO StudentFees (FeeID, StudentID, StudentName, Course, FeeAmount, PaidAmount, DueAmount, PaymentDate, Status)
VALUES (1, 101, 'Ravi Kumar', 'Computer Science', 50000.00, 30000.00, 20000.00, '2026-02-01', 'Partial');

select avg(fees)
from student
group by dept 
having avg(fees)>2000;

select*


create table employee(
int id,


CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Dept VARCHAR(50),
    Salary DECIMAL(10,2),
    City VARCHAR(50)
);

SELECT Dept, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Dept;

SELECT City, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY City;

SELECT AVG(Salary) AS AvgSalaryMumbai
FROM Employee
WHERE City = 'Mumbai';

SELECT Dept, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Dept
HAVING COUNT(*) > 2;

INSERT INTO Employee (EmpID, Name, Dept, Salary, City) VALUES
(1, 'Ravi Kumar', 'IT', 55000, 'Mumbai'),
(2, 'Priya Sharma', 'HR', 45000, 'Delhi'),
(3, 'Anil Mehta', 'Finance', 60000, 'Mumbai'),
(4, 'Kiran Rao', 'IT', 52000, 'Bangalore'),
(5, 'Sneha Gupta', 'Finance', 58000, 'Mumbai'),
(6, 'Arjun Singh', 'HR', 47000, 'Mumbai'),
(7, 'Meera Nair', 'IT', 62000, 'Delhi'),
(8, 'Vikram Das', 'Finance', 61000, 'Bangalore'), 
(9, 'Neha Joshi', 'HR', 43000, 'Mumbai'),
(10, 'Suresh Patil', 'IT', 50000, 'Mumbai');


select did from dept

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    dept VARCHAR(50),
    program VARCHAR(50)
);

id INT AUTO_INCREMENT PRIMARY KEY
id SERIAL PRIMARY KEY
id INT IDENTITY(1,1) PRIMARY KEY

CREATE TABLE student (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    dept VARCHAR(50),
    program VARCHAR(50),
    PRIMARY KEY (id)
);
DROP TABLE student;
CREATE TABLE student (
    id INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100),
    dept VARCHAR(50),
    program VARCHAR(50),
    PRIMARY KEY (id)
);
USE manya2;
create database manya2;

create database visma;
use visma;

student(id,name,marks,age,d_id)
dept(id,name)
select*from student where d_id=(select id from dept where name='cse');
select*from student where marks>(select avg (marks)from student);
select*from student where age>(select max(age)from student where d_id=(select id from dept where name='ece'));
select name from dept where id=(select d_id from student where name='rithi');
select*from student where marks=(select marks from student where name='anitha');

student(id,name,marks,age,d_id)
dept(id,name)
select*from student where d_id=(select id from dept where name='cse');
select*from student where marks>(select avg (marks)from student);
select*from student where age>(select max(age)from student where d_id=(select id from dept where name='ece'));
select name from dept where id=(select d_id from student where name='rithi');
select*from student where marks=(select marks from student where name='anitha');


CREATE TABLE Student (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    marks INT,
    age INT,
    d_id INT
);

CREATE TABLE Dept (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

SELECT * 
FROM Student 
WHERE d_id = (SELECT id FROM Dept WHERE name = 'cse');

SELECT * 
FROM Student 
WHERE marks > (SELECT AVG(marks) FROM Student);

SELECT * 
FROM Student 
WHERE age > (
    SELECT MAX(age) 
    FROM Student 
    WHERE d_id = (SELECT id FROM Dept WHERE name = 'ece')
);
SELECT name 
FROM Dept 
WHERE id = (SELECT d_id FROM Student WHERE name = 'rithi');


SELECT * 
FROM Student 
WHERE marks = (SELECT marks FROM Student WHERE name = 'anitha');




 
 
create database manyaa6;
use manyaa6;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product VARCHAR(100),
    amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);



INSERT INTO Customers (name, email, city)
VALUES 
('Alice', 'alice@example.com', 'Bangalore'),
('Bob', 'bob@example.com', 'Mysore');



INSERT INTO Orders (customer_id, product, amount, order_date)
VALUES
(1, 'Laptop', 75000.00, '2026-02-01'),
(2, 'Phone', 25000.00, '2026-02-02');



SELECT Customers.customer_id, Customers.name, Orders.order_id
FROM Customers
INNER JOIN Orders ON Customers.customer_id = Orders.customer_id;



SELECT Customers.customer_id, Customers.name, Orders.order_id
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;



SELECT Customers.customer_id, Customers.name, Orders.order_id
FROM Customers
FULL JOIN Orders ON Customers.customer_id = Orders.customer_id;




create database manyaa5;
use manyaa5;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product VARCHAR(100),
    amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);



INSERT INTO Customers (name, email, city)
VALUES 
('Alice', 'alice@example.com', 'Bangalore'),
('Bob', 'bob@example.com', 'Mysore');



INSERT INTO Orders (customer_id, product, amount, order_date)
VALUES
(1, 'Laptop', 75000.00, '2026-02-01'),
(2, 'Phone', 25000.00, '2026-02-02');



SELECT Customers.customer_id, Customers.name, Orders.order_id
FROM Customers
INNER JOIN Orders ON Customers.customer_id = Orders.customer_id;



SELECT Customers.customer_id, Customers.name, Orders.order_id
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;



SELECT Customers.customer_id, Customers.name, Orders.order_id
FROM Customers
FULL JOIN Orders ON Customers.customer_id = Orders.customer_id;




CREATE DATABASE database_name;
CREATE DATABASE ShopDB;
USE database_name;




CREATE PROCEDURE GetAllCustomers
AS
BEGIN
    SELECT customer_id, name, email, city
    FROM Customers;
END;



CREATE DATABASE anitha;
USE anitha;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product VARCHAR(100),
    amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


INSERT INTO Customers (name, email, city)
VALUES ('Alice', 'alice@example.com', 'Bangalore'),
       ('Bob', 'bob@example.com', 'Mysore');

INSERT INTO Orders (customer_id, product, amount, order_date)
VALUES (1, 'Laptop', 75000.00, '2026-02-01'),
       (2, 'Phone', 25000.00, '2026-02-02');
       
       
       
CREATE DATABASE student_db;
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    course VARCHAR(100)
);       

INSERT INTO students (first_name, last_name, age, course)
VALUES ('John', 'Doe', 20, 'Computer Science'),
       ('Jane', 'Smith', 22, 'Mathematics');
       
UPDATE students
SET course = 'Data Science'
WHERE student_id = 1;
       
DELETE FROM students
WHERE student_id = 2;

ALTER TABLE students
ADD email VARCHAR(100);

ALTER TABLE students
MODIFY age SMALLINT;
       
ALTER TABLE students
DROP COLUMN email;