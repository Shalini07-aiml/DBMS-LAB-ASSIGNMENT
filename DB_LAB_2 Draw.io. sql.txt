SQL*Plus: Release 21.0.0.0.0 - Production on Sat Feb 21 18:39:27 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Fri Feb 20 2026 23:08:03 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> CREATE TABLE Department (
  2  DepartmentID INT PRIMARY KEY,
  3  DepartmentName VARCHAR(50),
  4  OfficeLocation VARCHAR(50)
  5  );

Table created.

SQL> CREATE TABLE STUDENT (
  2  StudentID INT PRIMARY KEY,
  3  Name VARCHAR2(50),
  4  Gender VARCHAR2(10),
  5  DateOfBirth DATE,
  6  ContactNumber VARCHAR2(15),
  7  DepartmentID INT,
  8  FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
  9  );

Table created.

SQL> CREATE TABLE Faculty(
  2  FacultyID INT PRIMARY KEY,
  3  Name VARCHAR(50),
  4  Designation VARCHAR(50),
  5  Email VARCHAR(50),
  6  DepartmentID INT,
  7  FOREIGN KEY(DepartmentID) REFERENCES Department(DepartmentID)
  8  );

Table created.

SQL>  CREATE TABLE Course(
  2   CourseID INT PRIMARY KEY,
  3   CourseName VARCHAR2(50),
  4   Credits INT,
  5   DepartmentID INT,
  6   FacultyID INT,
  7   FOREIGN KEY (DepartmentID) REFERENCES  Department(DepartmentID),
  8   FOREIGN KEY(FacultyID) REFERENCES  Faculty(FacultyID)
  9   );

Table created.

SQL> CREATE TABLE Enrollment(
  2  EnrollmentID INT PRIMARY KEY,
  3  StudentID INT,
  4  CourseID INT,
  5  Semester VARCHAR2(20),
  6  Grade VARCHAR2(5),
  7  FOREIGN KEY (StudentID) REFERENCES
  8  Student(StudentID),
  9  FOREIGN KEY(CourseID) REFERENCES Course(CourseID)
 10  );

Table created.
