##DBMS Lab Assignment 4

Title

Data Retrieval Using SQL (Read-Only Queries)

Objective

The objective of this assignment is to learn how to retrieve 
and display data from database tables using SQL queries without modifying the stored data.

Description

This assignment focuses on practicing SQL data retrieval techniques. 
It includes queries to display records from tables, apply column aliases, 
filter data using conditions, sort results, limit the number of rows, and create derived outputs from existing data.

Tables Used

- Student
- Faculty
- Course
- Enrollment

SQL Concepts Used

1. SELECT Statement – Used to retrieve data from database tables.
2. Column Alias (AS) – Used to rename column names in the output.
3. WHERE Clause – Used to filter data based on conditions.
4. ORDER BY Clause – Used to sort data in ascending or descending order.
5. LIMIT Clause – Used to display a limited number of records.
6. Computed / Derived Output – Used to display calculated values such as age or updated credits.
7. Date Functions – Used to extract or calculate values from date columns.

Learning Outcome

Through this assignment, we understand how SQL queries help retrieve and analyze information from a database. It improves the ability to filter, organize, and present data efficiently.

Conclusion

SQL data retrieval techniques are essential for analyzing and managing database information. This assignment provides practical understanding of how to display and manipulate query results without changing the actual stored data.


##DBMS  LAB 5 (JOIN Queries)

Overview

This lab focuses on understanding how to retrieve data from multiple tables using JOIN operations in SQL. It helps in combining related data from different tables like Student, Course, Faculty, and Department.

---

Objective

- To learn how to use JOINs in SQL
- To combine data from multiple tables
- To understand relationships between tables

---

Topics Covered

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- Use of aliases
- Joining multiple tables

---

Tables Used

- Student
- Course
- Enrollment
- Faculty
- Department

---

Key Concepts

- INNER JOIN: Returns matching records from both tables
- LEFT JOIN: Returns all records from left table + matched from right
- RIGHT JOIN: Returns all records from right table + matched from left

---

Lab Tasks

- Display student and course details
- Show faculty with their departments
- Retrieve enrollment details
- Perform queries using multiple JOINs

---

How to Run

1. Open SQL environment (MySQL / Oracle / SQL Server)
2. Create required tables
3. Insert sample data
4. Execute JOIN queries

---

Output

- Combined data from multiple tables
- Correct query results based on JOIN operations

---

Conclusion

This lab helps in understanding how to efficiently retrieve related data using JOINs, which is an essential concept in database management systems.

---

 Notes

- Always use proper keys (Primary & Foreign Keys)
- Check query syntax carefully
- Use aliases for better readability

---

#DBMS Lab-6 Assignment

 Objective
 
The main objective of this project is to understand how to analyze and summarize data using SQL.
This includes the use of aggregate functions, GROUP BY clause, and HAVING clause to extract meaningful insights from database tables.
 Introduction
In real-world databases, large amounts of data are stored. To make sense of this data, we use data aggregation techniques.
SQL provides powerful tools like GROUP BY and HAVING to organize, filter, and analyze data efficiently.
Concepts Used

1. Aggregate Functions
   
Aggregate functions perform operations on multiple rows and return a single result.
Function
Description
COUNT()
Counts number of records
SUM()
Calculates total
AVG()
Calculates average
MAX()
Finds highest value
MIN()
Finds lowest value

 3. GROUP BY Clause

GROUP BY is used to group rows that have the same values in specified columns.
 Example:
SELECT DepartmentID, COUNT(*) AS Total_Students
FROM Students
GROUP BY DepartmentID;

5. GROUP BY with Multiple Columns
Grouping can also be done using more than one column.
Example:
SELECT Semester, Grade, COUNT(*) AS Total
FROM Students
GROUP BY Semester, Grade;

6. HAVING Clause
HAVING is used to filter grouped results (works after GROUP BY).
Example:
SELECT DepartmentID, COUNT(*) AS Total
FROM Students
GROUP BY DepartmentID
HAVING COUNT(*) > 2;

 7. GROUP BY with JOIN
GROUP BY can be combined with JOIN to work on multiple tables.
Example:
SELECT CourseID, COUNT(StudentID) AS Enrolled_Students
FROM Enrollment
GROUP BY CourseID;
Lab Work / Tasks Performed

Part A: Basic Aggregation
Total number of students
Total number of faculty members
Maximum and minimum values

Part B: GROUP BY on Single Table
Students count department-wise
Faculty count department-wise
Courses count department-wise

Part C: GROUP BY with HAVING
Departments having more than 3 students
Courses having more than 2 enrollments

Part D: GROUP BY with JOIN
Number of students enrolled in each course
Department-wise student analysis
Faculty-wise teaching analysis

Part E: Analytical Queries
Maximum grade in each course
Department-wise total courses
Semester-wise enrollment analysis

 Key Observations
 
GROUP BY organizes data into groups
HAVING filters grouped data
WHERE filters data before grouping
Aggregate functions are essential for analysis

Learning Outcome

Gained understanding of SQL data aggregation
Learned how to analyze real-world datasets
Improved query writing and logical thinking
Understood the importance of structured data analysis

Conclusion
 
This project demonstrates how SQL can be effectively used to manage and analyze large datasets.
By using GROUP BY and HAVING, we can extract meaningful information and make better data-driven decisions.
