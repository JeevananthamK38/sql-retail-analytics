-- how to create a new database using the below codes

create database	Jeevan;

-- to create table inside the database

USE jeevan;
CREATE TABLE student ( roll_no INT PRIMARY KEY, name VARCHAR (50));
SELECT * 
FROM student;

-- how to add values inside table

INSERT INTO student (roll_no,name) values (101,"Karan");
INSERT INTO student (roll_no,name) values (102,"Arjun");
INSERT INTO student (roll_no,name) values (103,"Ram");
INSERT INTO student (roll_no,name) values (104,"Shyam");
-- view the tables
SELECT *
FROM student;

CREATE database Dynamo_company;

USE Dynamo_company;

DROP TABLE dynamo_company;
CREATE TABLE Employee (
id INT PRIMARY KEY,
name VARCHAR(50),
salary INT);

INSERT INTO Employee (id,name,salary) VALUES (1,"adam",25000);
INSERT INTO Employee (id,name,salary) VALUES (2,"bob",30000);
INSERT INTO Employee (id,name,salary) Values (3,"casey",40000);

DROP DATABASE demo;
USE practicesql;
SELECT *
FROM advisors;

DROP DATABASE practicesql;

-- UniversityDB
CREATE DATABASE University;
USE University;
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Faculty (
    DepartmentID INT PRIMARY KEY,
    FacultyName VARCHAR(50)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    Percentage DECIMAL(5, 2),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Insert data into Department table
INSERT INTO Department (DepartmentID, DepartmentName)
VALUES
    (1, 'Mathematics'),
    (2, 'Physics'),
    (3, 'English');

-- Insert data into Faculty table
INSERT INTO Faculty (DepartmentID, FacultyName)
VALUES
    (1, 'Piyush'),
    (2, 'Namita'),
    (3, 'Ashneer'),
    (4, 'Ghazal'),
    (5, 'Anupam');

-- Insert data into Student table
INSERT INTO Student (StudentID, Name, Email, Percentage, DepartmentID)
VALUES
    (1001, 'Ajay', 'ajay@xyz.com', 85, 1),
    (1002, 'Babloo', 'babloo@xyz.com', 67, 2),
    (1003, 'Chhavi', 'chhavi@xyz.com', 89, 3),
    (1004, 'Dheeraj', 'dheeraj@xyz.com', 75, NULL), -- Note: No DepartmentID for Dheeraj
    (1005, 'Evina', 'evina@xyz.com', 91, 1),
    (1006, 'Krishna', 'krishna@xyz.com', 99, 3);

CREATE DATABASE DataTimedb;
USE DataTimedb;

CREATE TABLE Employee(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    BirthDate DATE,
    HireDate DATE,
    Salary DECIMAL(10, 2),
    Department VARCHAR(255)
);
INSERT INTO Employee (EmployeeID, FirstName, LastName, BirthDate, HireDate, Salary, Department)
VALUES
(1, 'John', 'Doe', '1990-05-15', '2015-03-10', 55000.00, 'Sales'),
(2, 'Jane', 'Smith', '1985-08-21', '2016-01-22', 60000.00, 'Marketing'),
(3, 'Michael', 'Johnson', '1992-12-02', '2017-07-05', 52000.00, 'IT'),
(4, 'Emily', 'Davis', '1988-04-17', '2018-09-12', 65000.00, 'HR'),
(5, 'David', 'Wilson', '1995-07-09', '2019-02-28', 58000.00, 'Finance'),
(6, 'Sarah', 'Anderson', '1983-02-14', '2020-06-15', 70000.00, 'Sales'),
(7, 'Jennifer', 'Lee', '1991-11-30', '2021-04-20', 54000.00, 'Marketing'),
(8, 'Matthew', 'Brown', '1989-09-05', '2015-12-03', 61000.00, 'IT'),
(9, 'Olivia', 'Taylor', '1994-06-23', '2017-08-18', 59000.00, 'HR'),
(10, 'Daniel', 'Martinez', '1987-03-07', '2018-11-14', 66000.00, 'Finance'),
(11, 'Ava', 'Garcia', '1993-01-12', '2019-10-07', 57000.00, 'Sales'),
(12, 'William', 'Rodriguez', '1984-10-28', '2020-03-25', 63000.00, 'Marketing'),
(13, 'Sophia', 'Hernandez', '1996-04-03', '2021-07-09', 62000.00, 'IT'),
(14, 'James', 'Lopez', '1986-08-10', '2016-09-02', 67000.00, 'HR'),
(15, 'Emma', 'Clark', '1990-12-19', '2017-11-30', 60000.00, 'Finance');


CREATE DATABASE SetOperatorDB;
USE SetOperatorDB;

CREATE TABLE university_professors (
    professor_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    teaching_subject VARCHAR(100),
    office_location VARCHAR(100),
    office_hours VARCHAR(100),
    academic_rank VARCHAR(50)
);
CREATE TABLE online_platform_professors (
    professor_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    platform_name VARCHAR(100),
    teaching_subject VARCHAR(100),
    course_schedule VARCHAR(100)
);
INSERT INTO university_professors (professor_id, first_name, last_name, department, teaching_subject, office_location, office_hours, academic_rank)
VALUES
    (1, 'John', 'Smith', 'Computer Science', 'Data Structures', 'Building A, Room 101', 'Monday 2-4 PM', 'Professor'),
    (2, 'Alice', 'Johnson', 'Mathematics', 'Calculus', 'Building B, Room 203', 'Wednesday 10 AM-12 PM', 'Associate Professor'),
    (3, 'Michael', 'Brown', 'Physics', 'Quantum Mechanics', 'Building C, Room 305', 'Tuesday 3-5 PM', 'Professor'),
    (4, 'Emily', 'Davis', 'History', 'World History', 'Building D, Room 107', 'Thursday 1-3 PM', 'Associate Professor'),
    (5, 'David', 'Wilson', 'English', 'Literature', 'Building E, Room 201', 'Friday 9-11 AM', 'Professor');
INSERT INTO online_platform_professors (professor_id, first_name, last_name, platform_name, teaching_subject, course_schedule)
VALUES
    (1, 'Maria', 'Martinez', 'OnlineEdX', 'Machine Learning', 'Monday and Wednesday 6-8 PM'),
    (2, 'Robert', 'Clark', 'Coursera', 'Artificial Intelligence', 'Tuesday and Thursday 9-11 AM'),
    (3, 'Jennifer', 'Lee', 'Udemy', 'Web Development', 'Friday 3-5 PM'),
    (4, 'Daniel', 'Hall', 'edX', 'Data Analytics', 'Tuesday and Friday 1-3 PM'),
    (5, 'Sarah', 'Garcia', 'Coursera', 'Digital Marketing', 'Monday and Thursday 2-4 PM'),
    (6, 'Emily', 'Davis', 'Udemy', 'World History', 'Thursday 1-3 PM'),
    (7, 'David', 'Wilson', 'edX', 'Literature', 'Friday 9-11 AM');
    
    USE dynamo_company;
    SELECT *
    FROM Employee;
    
CREATE database college_data;
USE college_data;

CREATE TABLE students (rollno INT primary kEY, name VARCHAR(50),marks INT NOT NULL,grade varchar(1),CITY VARCHAR (20));
CREATE TABLE dept (id INT primary kEY, name VARCHAR(50));
CREATE TABLE teacher (id INT primary kEY, name VARCHAR(50), dept_id INT, FOREIGN key (dept_id) references dept(id) 
on update cascade
on delete cascade);
INSERT INTO students (rollno,name,marks,grade,city) Values 
(101,"anil",78,"C","Pune"),(102,"Bhumika",93,"A","Mumbai"),(103,"Chetan",85,"B","Mumbai"),(104,"Dhruv",96,"A","Delhi"),(105,"emanuel",12,"F","Delhi"),(106,"Farah",82,"B","Delhi");

INSERT INTO dept(id,name) Values (101,"Science"),(102,"English"),(103,"Hindi");
INSERT INTO teacher(id,name,dept_id) Values (101,"adam",101),(102,"Bob",103),(103,"Casey",102),(104,"Donald",102);



use college_data;
Select distinct name
FROM students
WHERE marks >90 oR city="Mumbai";

SELECT count(city)
FROM students;

SELECT city, MAX(marks)
FROM students
GROUP by city;

Select city,avg(marks) as Average_marks
FROM students
Group by city
order by avg(marks) asc;

SELECT city,count(name) as number_of_students
FROM students
GROUP by city
having max(marks >90);

SELECT city
FROM students
Where grade = "A"
GROUP by city
having max(marks >90)
ORDER by city asc;

set SQL_SAFE_UPDATES=0;

update students
set grade ="0"
where grade ="A";

select *
from students;

update students
set grade = "B"
where marks between 80 AND 90;

select *
from students;

update students
set marks = marks+2;

select *
from students;

delete from students
where marks <33;

select * from students;

-- what is foriegn key concepts?
select d.name as department_name,t.name as teacher_name
from dept d
join teacher t ON t.dept_id=d.id;

-- union & union all
Select count(d.name)
from dept d
UNION ALL
select count(t.name)
from teacher t;

Select t.name, d.name
from dept d
JOIN teacher t ON d.id=t.dept_id;

use university;

use college_data;

Show tables;

use ecommerce;
Show tables;

Select *
From products;

Select * 
From orders;

-- INNER JOIN or JOIN all the tables
Select o.*,p.*
FROM Orders o
JOIN Products p ON p.product_id=o.customer_id;

-- INNER JOIN or JOIN all the tables
Select o.*,p.*
FROM Orders o
JOIN Products p ON p.product_id=o.customer_id;

-- LEFT JOIN all the tables
Select o.*,p.*
FROM Orders o
LEFT JOIN Products p ON p.product_id=o.customer_id;

-- RIGHT JOIN all the tables
Select o.*,p.*
FROM Orders o
RIGHT JOIN Products p ON p.product_id=o.customer_id;

-- FULL JOIN all the tables
Select o.*,p.*
FROM Orders o
LEFT JOIN Products p ON p.product_id=o.customer_id
UNION
Select o.*,p.*
FROM Orders o
RIGHT JOIN Products p ON p.product_id=o.customer_id;

Use university;

Select *
FROM department;

-- INNER JOIN
select d.*,s.*
FROM department d
INNER JOIN student s ON s.DepartmentID = d.DepartmentID;

-- LEFT JOIN
select d.*,s.*
FROM department d
LEFT JOIN student s ON s.DepartmentID = d.DepartmentID;

-- RIGHT JOIN
select d.*,s.*
FROM department d
RIGHT JOIN student s ON s.DepartmentID = d.DepartmentID;


-- UNION
select d.*,s.*
FROM department d
LEFT JOIN student s ON s.DepartmentID = d.DepartmentID
UNION ALL
select d.*,s.*
FROM department d
RIGHT JOIN student s ON s.DepartmentID = d.DepartmentID;

-- left excluse join
select d.*,s.*
FROM department d
LEFT JOIN student s ON s.DepartmentID = d.DepartmentID
WHERE s.DepartmentID IS NULL;

-- RIGHT excluse join
select d.*,s.*
FROM department d
RIGHT JOIN student s ON s.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL;

use college_data;
show tables;

select *
from students;

-- subquery to identify the student name whose score is above average marks of the entire students
select name, marks
from students
where marks > (
select avg(marks) from students);
-- subquery to identify the even roll numbers
select name, rollno
from students
where rollno IN (
select rollno
from students where rollno %2 =0);

-- find the max marks from the students of delhi

SELECT max(marks)
from (Select * FROM students
WHERE CITY = "Delhi") as temp; 

-- Case statements
SELECT rollno, name, marks,
CASE 
 When marks > 75 then 'Distinction'
 When marks between 50 AND 74 then 'Pass'
 else 'fail'
end as 'Grade level'
From students
Order by marks desc;

use dynamo_company;
show tables;
select *
from employee;

use ecommerce;
select *
From order_items;
select *
From products;

-- find the total sales from each product category from tables product and order_items using the common primary key as product_ID
select category, total_sales
From (
select p.category, sum(o.quantity*o.price) as total_sales
From products p
Join order_items o on p.product_id=o.product_id
group by p.category
 ) as T
 order by total_sales DESC;
 
 SELECT 
    p.product_id,
    p.product_name,
    SUM(oi.quantity * oi.price) AS total_revenue
FROM 
    order_items oi
JOIN 
    products p ON oi.product_id = p.product_id
GROUP BY 
    p.product_id, p.product_name
ORDER BY 
    total_revenue DESC
LIMIT 3;

SELECT 
    p.product_id,
    p.product_name,
    SUM(oi.quantity * oi.price) AS total_revenue
FROM 
    order_items oi
JOIN 
    products p ON oi.product_id = p.product_id
GROUP BY 
    p.product_id, p.product_name
ORDER BY 
    total_revenue DESC
LIMIT 1 OFFSET 2;

WITH ProductRevenue AS (
    SELECT 
        p.product_id,
        p.product_name,
        SUM(oi.quantity * oi.price) AS total_revenue
    FROM 
        order_items oi
    JOIN 
        products p ON oi.product_id = p.product_id
    GROUP BY 
        p.product_id, p.product_name
),
RankedProducts AS (
    SELECT 
        *,
        RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank
    FROM 
        ProductRevenue
)
SELECT 
    product_id,
    product_name,
    total_revenue
FROM 
    RankedProducts
WHERE 
    revenue_rank = 3;
    
    SELECT 
    order_id,
    order_date,
    DENSE_RANK() OVER (ORDER BY order_date) AS order_rank
FROM 
    orders;
    
    SELECT 
    customer_id,
    order_id,
    order_date,
    ROW_NUMBER() OVER (
        PARTITION BY customer_id 
        ORDER BY order_date
    ) AS order_sequence
FROM 
    orders
ORDER BY 
    customer_id, order_date;


SELECT
    c.first_name,
    c.last_name,
    YEAR(o.order_date) AS order_year,
    COUNT(o.order_id) AS total_orders,
    RANK() OVER (
        PARTITION BY YEAR(o.order_date)
        ORDER BY COUNT(o.order_id) DESC
    ) AS rank_in_year
FROM
    customers c
JOIN
    orders o ON c.customer_id = o.customer_id
GROUP BY
    c.first_name,
    c.last_name,
    YEAR(o.order_date)
ORDER BY
    order_year,
    rank_in_year;
