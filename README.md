# My SQL Learning Notes

SQL fundamentals to advanced database concepts in MySQL.

---

## 🛠️ Basics & Tables
Manage databases and tables

### 🗄️ Database Operations
* `CREATE DATABASE`, `USE`, and `DROP DATABASE`

### 📋 Table Operations
* `CREATE TABLE`, `INSERT INTO`, `DESCRIBE`, and `DROP TABLE`

---

## 🔒 Constraints & Altering
Control data integrity and modify tables

### 🔑 Primary Key & Constraints
* `PRIMARY KEY`, `AUTO_INCREMENT`, `NOT NULL`, `DEFAULT`, `UNIQUE`, and `CHECK`

### 🛠️ Modify Existing Tables
* `ALTER TABLE` (`ADD`, `DROP`, `RENAME COLUMN`, `MODIFY`, `CHANGE`)[cite: 1]

---

## 🔤 String Functions
Useful functions for manipulating text

### ✍️ Text Formatting & Extraction
* `CONCAT()`, `CONCAT_WS()`, `SUBSTRING()`, `REPLACE()`, `REVERSE()`, `UPPER()`, `LOWER()`, `LENGTH()`, `CHAR_LENGTH()`, and `TRIM()`[cite: 1]

---

## 📅 Dates & Times
Working with timestamps and dates

### 🕒 Current Time Functions
* `NOW()`, `CURDATE()`, and `CURTIME()`[cite: 1]

### 📆 Extracting Date Parts
* `DAY()`, `MONTH()`, `YEAR()`, and `DATE_FORMAT()`[cite: 1]

### 🧮 Date Math & Calculations
* `DATEDIFF()`, `TIMEDIFF()`, and `DATE_ADD()` / `DATE_SUB()`[cite: 1]

---

## 📊 Aggregations & Grouping
Summarize and analyze datasets

### 📈 Summary Functions
* `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`[cite: 1]

### 📂 Data Grouping
* `GROUP BY`, `HAVING`, and `WITH ROLLUP`[cite: 1]

---

## 🔍 Filtering & Logic
Query specific data using operators and conditions

### 🎯 Comparison & Search
* `WHERE`, `LIKE` (`%` and `_` wildcards), `BETWEEN ... AND`, `IN`, and `IS NULL`[cite: 1]

### 🔀 Conditional Logic
* `CASE WHEN ... THEN ... ELSE END` and `IFNULL()`[cite: 1]

---

## 🔗 Joins & Relationships
Combine data across multiple related tables

### 🌐 Table Relationships
* One-to-One, One-to-Many, and Many-to-Many using `FOREIGN KEY`[cite: 1]

### 🔀 Join Types
* `INNER JOIN` (or `JOIN`), `LEFT JOIN`, `RIGHT JOIN`, and Cross Join[cite: 1]

---

# 🚀 Advanced Features

---

## 🪟 Window Functions
Perform calculations across a set of table rows related to the current row

### 📐 Partitioning & Ordering
* `OVER(PARTITION BY ... ORDER BY ...)`[cite: 1]

### 🏆 Ranking & Value Functions
* `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `NTILE()`, `FIRST_VALUE()`, `LAG()`, and `LEAD()`[cite: 1]

---

## 👁️ Views
Virtual tables created from SQL queries

### ⚙️ View Operations
* `CREATE VIEW`, `CREATE OR REPLACE VIEW`, `ALTER VIEW`, and `DROP VIEW`[cite: 1]

---

## ⚡ Triggers
Automatic actions executed before or after database events

### ⚙️ Trigger Syntax
* `CREATE TRIGGER`, `BEFORE / AFTER`, `INSERT / UPDATE / DELETE`, `FOR EACH ROW`, and `SIGNAL SQLSTATE`[cite: 1]
