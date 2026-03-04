# 📊 PR2 - Data Transformer – Advanced SQL Project
 
 Name : Kunj Mistry
 
 GR ID : 12078
 
 Batch : RW6
 
 Date : 05/03/26


## 🚀 Project Overview

**Data Transformer** is an advanced SQL project designed to demonstrate practical knowledge of database management and data analysis using MySQL.

This project simulates a **Corporate Data Analysis System** that manages:

- 👥 Customer Information  
- 🛒 Sales Transactions  
- 👨‍💼 Employee Performance Data  

It showcases advanced SQL concepts such as joins, subqueries, window functions, date functions, string manipulation, and CASE expressions.

---

## 🎯 Objectives

- Practice real-world SQL queries  
- Work with relational database design  
- Perform data transformation for reporting  
- Apply advanced SQL operations  
- Build strong foundation for Data Analyst / Data Engineer roles  

---

## 🏗️ Database Structure

### 1️⃣ Customers Table

| Column | Data Type |
|--------|----------|
| CustomerID | INT (Primary Key) |
| FirstName | VARCHAR |
| LastName | VARCHAR |
| Email | VARCHAR |
| RegistrationDate | DATE |

---

### 2️⃣ Orders Table

| Column | Data Type |
|--------|----------|
| OrderID | INT (Primary Key) |
| CustomerID | INT (Foreign Key) |
| OrderDate | DATE |
| TotalAmount | DECIMAL |

**Relationship:**  
Customers (1) ---- (Many) Orders

---

### 3️⃣ Employees Table

| Column | Data Type |
|--------|----------|
| EmployeeID | INT (Primary Key) |
| FirstName | VARCHAR |
| LastName | VARCHAR |
| Department | VARCHAR |
| HireDate | DATE |
| Salary | DECIMAL |

---

## 📦 Sample Data

- ✅ 25 Customers  
- ✅ 25 Orders  
- ✅ 25 Employees  

Data includes realistic:
- Registration dates  
- Order amounts  
- Departments  
- Salaries  

---

## 🧠 SQL Concepts Covered

### 🔹 Joins
- INNER JOIN  
- LEFT JOIN  
- RIGHT JOIN  
- FULL OUTER JOIN (using UNION in MySQL)

### 🔹 Subqueries
- Customers above average order value  
- Employees above average salary  

### 🔹 Date Functions
- YEAR()  
- MONTH()  
- DATEDIFF()  
- DATE_FORMAT()  

### 🔹 String Functions
- CONCAT()  
- REPLACE()  
- UPPER()  
- TRIM()  

### 🔹 Window Functions
- SUM() OVER() – Running Total  
- RANK() OVER() – Order Ranking  

### 🔹 CASE Expressions
- Discount calculation  
- Salary categorization  

---

## 📈 Business Logic Implemented

- Rank orders based on TotalAmount  
- Categorize employees as High / Medium / Low salary  
- Assign discounts dynamically  
- Calculate running revenue  
- Analyze order trends by year & month  

---

## 🛠️ Technologies Used

- MySQL  
- SQL (Advanced Queries)  

---

## ▶️ How to Run the Project

1. Open MySQL Workbench  
2. Create the database  
3. Run table creation scripts  
4. Insert sample data  
5. Execute query section  

---

## 💡 Skills Demonstrated

- Relational Database Design  
- Data Analysis using SQL  
- Advanced Query Writing  
- Business Logic Implementation  
- Reporting & Data Transformation  

---

## 📌 Use Case

This project is useful for:

- Data Analyst Portfolio  
- Data Engineer Beginners  
- SQL Interview Practice  
- Academic Mini Project  
- Placement Preparation  

---

## 👨‍💻 Author

**Kunj Mistry**  
SQL & Data Enthusiast  
Industrial Training Project

---

⭐ If you found this project helpful, feel free to give it a star!
