# My SQL Learning Notes

SQL fundamentals to advanced database concepts in MySQL.

---

## Basics & Tables
Manage databases and tables

### Database Operations
* `CREATE DATABASE`, `USE`, and `DROP DATABASE`

### Table Operations
* `CREATE TABLE`, `INSERT INTO`, `DESCRIBE`, and `DROP TABLE`

---

## Constraints & Altering
Control data integrity and modify tables

### Primary Key & Constraints
* `PRIMARY KEY`, `AUTO_INCREMENT`, `NOT NULL`, `DEFAULT`, `UNIQUE`, and `CHECK`

### Modify Existing Tables
* `ALTER TABLE` (`ADD`, `DROP`, `RENAME COLUMN`, `MODIFY`, `CHANGE`)

---

## String Functions
Useful functions for manipulating text

### Text Formatting & Extraction
* `CONCAT()`, `CONCAT_WS()`, `SUBSTRING()`, `REPLACE()`, `REVERSE()`, `UPPER()`, `LOWER()`, `LENGTH()`, `CHAR_LENGTH()`, and `TRIM()`

---

## Dates & Times
Working with timestamps and dates

### Current Time Functions
* `NOW()`, `CURDATE()`, and `CURTIME()`

### Extracting Date Parts
* `DAY()`, `MONTH()`, `YEAR()`, and `DATE_FORMAT()`

### Date Math & Calculations
* `DATEDIFF()`, `TIMEDIFF()`, and `DATE_ADD()` / `DATE_SUB()`

---

## Aggregations & Grouping
Summarize and analyze datasets

### Summary Functions
* `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`

### Data Grouping
* `GROUP BY`, `HAVING`, and `WITH ROLLUP`

---

## Filtering & Logic
Query specific data using operators and conditions

### Comparison & Search
* `WHERE`, `LIKE` (`%` and `_` wildcards), `BETWEEN ... AND`, `IN`, and `IS NULL`

### Conditional Logic
* `CASE WHEN ... THEN ... ELSE END` and `IFNULL()`

---

## Joins & Relationships
Combine data across multiple related tables

### Table Relationships
* One-to-One, One-to-Many, and Many-to-Many using `FOREIGN KEY`

### Join Types
* `INNER JOIN` (or `JOIN`), `LEFT JOIN`, `RIGHT JOIN`, and Cross Join

---

# Advanced Features

---

## Window Functions
Perform calculations across a set of table rows related to the current row

### Partitioning & Ordering
* `OVER(PARTITION BY ... ORDER BY ...)`

### Ranking & Value Functions
* `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `NTILE()`, `FIRST_VALUE()`, `LAG()`, and `LEAD()`

---

## Views
Virtual tables created from SQL queries

### View Operations
* `CREATE VIEW`, `CREATE OR REPLACE VIEW`, `ALTER VIEW`, and `DROP VIEW`

---

## Triggers
Automatic actions executed before or after database events

### Trigger Syntax
* `CREATE TRIGGER`, `BEFORE / AFTER`, `INSERT / UPDATE / DELETE`, `FOR EACH ROW`, and `SIGNAL SQLSTATE`

##  SQL Execution & Safety Modes
Modify SQL capabilities, safety guards, and server modes

### Safe Updates & Modes
* `SELECT @@GLOBAL.sql_mode;` and `SELECT @@session.sql_mode;`
* `SET SQL_SAFE_UPDATES = 0;` / `1;`
