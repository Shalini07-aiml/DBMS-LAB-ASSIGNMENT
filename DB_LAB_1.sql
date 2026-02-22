SQL*Plus: Release 21.0.0.0.0 - Production on Fri Jan 30 23:12:57 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Wed Jan 28 2026 23:28:02 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> CREATE TABLE Student1 (
  2  RollNo INT,
  3  Name VARCHAR(50),
  4  Dept VARCHAR(20),
  5  age INT,
  6  Phone VARCHAR(15)
  7  );

Table created.

SQL> DESC Student1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)

SQL> CREATE TABLE Course (
  2  CourseID INT,
  3  CourseName VARCHAR(50),
  4  Credits INT
  5  );

Table created.

SQL> DESC Course;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSEID                                           NUMBER(38)
 COURSENAME                                         VARCHAR2(50)
 CREDITS                                            NUMBER(38)

SQL> ALTER TABLE STUDENT1 ADD city
  2  VARCHAR(50);

Table altered.

SQL> DESC Student1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(50)

SQL> ALTER TABLE Student1 ADD semester
  2  VARCHAR(50);

Table altered.

SQL> DESC Student1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(50)
 SEMESTER                                           VARCHAR2(50)

SQL> ALTER TABLE Student1
  2  RENAME COLUMN Phone TO MobileNo;

Table altered.

SQL> DESC Student1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(50)
 SEMESTER                                           VARCHAR2(50)

SQL> DROP TABLE Course;

Table dropped.

SQL> INSERT INTO Student1 (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (100,'Shalini','AI',20,6299626005,'DELHI',5);

1 row created.

SQL> INSERT INTO Student1 (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (101,'Ananya','CSE',21,6634789305,'HYDERABAD',5);

1 row created.

SQL> INSERT INTO Student1 (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2   VALUES (102,'Rahul','CSE',22,5632389305,'PATNA',5);

1 row created.

SQL> INSERT INTO Student1 (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (103,'Nidhi','CSE',19,7234789305,'DEHRADUN',5);

1 row created.

SQL> INSERT INTO Student1 (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (105,'Alisha','AI',24,8765789305,'CHENNAI',5);

1 row created.

SQL> SELECT * FROM Student1;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       100 Shalini
AI                           20 6299626005
DELHI
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       101 Ananya
CSE                          21 6634789305
HYDERABAD
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       102 Rahul
CSE                          22 5632389305
PATNA
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       103 Nidhi
CSE                          19 7234789305
DEHRADUN
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       105 Alisha
AI                           24 8765789305
CHENNAI
5


SQL> SELECT RollNo,Name FROM Student1;

    ROLLNO NAME
---------- --------------------------------------------------
       100 Shalini
       101 Ananya
       102 Rahul
       103 Nidhi
       105 Alisha

SQL> SELECT * FROM Student1 WHERE Dept = 'CSE';

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       101 Ananya
CSE                          21 6634789305
HYDERABAD
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       102 Rahul
CSE                          22 5632389305
PATNA
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       103 Nidhi
CSE                          19 7234789305
DEHRADUN
5


SQL> SELECT * FROM Student1 WHERE AGE > 20;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       101 Ananya
CSE                          21 6634789305
HYDERABAD
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       102 Rahul
CSE                          22 5632389305
PATNA
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       105 Alisha
AI                           24 8765789305
CHENNAI
5
SQL> UPDATE Student1
  2  SET Dept = 'ECE'
  3  WHERE RollNo = 101;

1 row updated.

SQL> SELECT * FROM Student1;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       100 Shalini
AI                           20 6299626005
DELHI
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       101 Ananya
ECE                          21 6634789305
HYDERABAD
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       102 Rahul
CSE                          22 5632389305
PATNA
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       103 Nidhi
CSE                          19 7234789305
DEHRADUN
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       105 Alisha
AI                           24 8765789305
CHENNAI
5


SQL> UPDATE Student1
  2  SET City = 'Patna'
  3  WHERE Name = 'Rahul';

1 row updated.

SQL> SELECT * FROM Student1;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       100 Shalini
AI                           20 6299626005
DELHI
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       101 Ananya
ECE                          21 6634789305
HYDERABAD
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       102 Rahul
CSE                          22 5632389305
Patna
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       103 Nidhi
CSE                          19 7234789305
DEHRADUN
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       105 Alisha
AI                           24 8765789305
CHENNAI
5


SQL> UPDATE Student1
  2  SET Age = Age+1;

5 rows updated.

SQL> SELECT * FROM Student1;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       100 Shalini
AI                           21 6299626005
DELHI
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       101 Ananya
ECE                          22 6634789305
HYDERABAD
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       102 Rahul
CSE                          23 5632389305
Patna
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       103 Nidhi
CSE                          20 7234789305
DEHRADUN
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       105 Alisha
AI                           25 8765789305
CHENNAI
5


SQL> DELETE FROM Student1
  2  WHERE RollNo = 105;

1 row deleted.

SQL> SELECT * FROM Student1
  2  ;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       100 Shalini
AI                           21 6299626005
DELHI
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       101 Ananya
ECE                          22 6634789305
HYDERABAD
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       102 Rahul
CSE                          23 5632389305
Patna
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       103 Nidhi
CSE                          20 7234789305
DEHRADUN
5


SQL> DELETE FROM Student1;

4 rows deleted.