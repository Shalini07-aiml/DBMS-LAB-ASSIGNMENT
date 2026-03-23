SQL*Plus: Release 21.0.0.0.0 - Production on Fri Mar 13 14:27:25 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Sun Mar 01 2026 09:46:29 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> SELECT COUNT(*) AS Total_Students
  2  FROM Student;

TOTAL_STUDENTS
--------------
            10

SQL> SELECT COUNT(*) AS Total_Faculty FROM Faculty;

TOTAL_FACULTY
-------------
           10

SQL> SELECT MAX(Credits) AS Max_Credits FROM Course;

MAX_CREDITS
-----------
          4

SQL> SELECT MIN(Credits) AS Min_Credits FROM Course;

MIN_CREDITS
-----------
          3

SQL> SELECT DepartmentID,COUNT(*) AS Number_of_Students FROM Student
  2  GROUP BY DepartmentID;

DEPARTMENTID NUMBER_OF_STUDENTS
------------ ------------------
           1                  1
           2                  1
           3                  1
           4                  1
           5                  1
           6                  1
           7                  1
           8                  1
           9                  1
          10                  1

10 rows selected.

SQL> SELECT DepartmentID, COUNT(*) AS Number_of_Faculty FROM Faculty GROUP BY DepartmentID;

DEPARTMENTID NUMBER_OF_FACULTY
------------ -----------------
           1                 2
           2                 1
           3                 1
           4                 1
           6                 1
           7                 1
           8                 1
           9                 1
          10                 1

9 rows selected.

SQL> SELECT DepartmentID,COUNT(*) AS Number_of_Courses FROM Course
  2  GROUP BY DepartmentID;

DEPARTMENTID NUMBER_OF_COURSES
------------ -----------------
           3                 3
           4                 2
           1                 2
           2                 1
           9                 1
          10                 1

6 rows selected.

SQL> SELECT Grade, COUNT(*) AS Total_Students FROM Enrollment GROUP BY Grade;

GRADE TOTAL_STUDENTS
----- --------------
A                  2
B+                 1
B                  1

SQL> SELECT Grade, COUNT(*) AS Total_Students FROM Enrollment GROUP BY Grade;

GRADE TOTAL_STUDENTS
----- --------------
A                  2
B+                 1
B                  1

SQL> SELECT DepartmentID,COUNT(*) AS Total_Students FROM Student
  2  GROUP BY DepartmentID HAVING COUNT(*) > 3;

no rows selected

SQL> SELECT Semester, COUNT(*) AS Total_Enrollments FROM Enrollment
  2  GROUP BY Semester HAVING COUNT(*) > 2;

SEMESTER             TOTAL_ENROLLMENTS
-------------------- -----------------
Sem-5                                4

SQL> SELECT Grade,COUNT(*) AS Total FROM Enrollment
  2  GROUP BY Grade HAVING COUNT(*) > 1;

GRADE      TOTAL
----- ----------
A              2

SQL> SELECT DepartmentID,COUNT(*) AS Total_Courses FROM Course
  2  GROUP BY DepartmentID HAVING COUNT(*) > 1;

DEPARTMENTID TOTAL_COURSES
------------ -------------
           3             3
           4             2
           1             2

SQL> SELECT CourseID,COUNT(StudentID) AS Enrolled_Students
  2  FROM Enrollment GROUP BY CourseID;

  COURSEID ENROLLED_STUDENTS
---------- -----------------
       203                 1
       201                 1
       202                 1
       204                 1

SQL> SELECT Course.CourseName,COUNT(Enrollment.StudentID) AS Total_Students FROM Course
  2  JOIN Enrollment ON Course.CourseID=Enrollment.CourseID GROUP BY Course.CourseName;

COURSENAME                                         TOTAL_STUDENTS
-------------------------------------------------- --------------
Thermodynamics                                                  1
Digital Electronics                                             1
Database Management System                                      1
Power System                                                    1

SQL> SELECT DepartmentID,COUNT(StudentID) AS Total_Students FROM Student
  2  GROUP BY DepartmentID;

DEPARTMENTID TOTAL_STUDENTS
------------ --------------
           1              1
           2              1
           3              1
           4              1
           5              1
           6              1
           7              1
           8              1
           9              1
          10              1

10 rows selected.

SQL> DESC Faculty;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 FACULTYID                                 NOT NULL NUMBER(38)
 NAME                                               VARCHAR2(50)
 DESIGNATION                                        VARCHAR2(50)
 EMAIL                                              VARCHAR2(50)
 DEPARTMENTID                                       NUMBER(38)

SQL> SELECT Faculty.Name,
  2  COUNT(Course.CourseID) AS Total_Courses FROM Faculty
  3  JOIN Course ON Faculty.FacultyID=Course.FacultyID
  4  GROUP BY Faculty.Name;

NAME                                               TOTAL_COURSES
-------------------------------------------------- -------------
Dr Ajay Giri                                                   1
Prof Ashish Kumar Suman                                        2
Dr M P Singh                                                   1
VICKY ANAND                                                    1
Dr AJAY KUMAR                                                  1
Dr Prity Kumari Choudhary                                      1
Puja Rani                                                      1
Pankaj Kumar                                                   1
Arun Kumar                                                     1

9 rows selected.

SQL> SELECT Course.CourseName,
  2  MAX(Enrollment.Grade) AS Max_Grade FROM Course
  3  JOIN Enrollment ON Course.CourseID=Enrollment.CourseID GROUP BY Course.CourseName;

COURSENAME                                         MAX_G
-------------------------------------------------- -----
Thermodynamics                                     A
Digital Electronics                                B+
Database Management System                         A
Power System                                       B

SQL> SELECT DepartmentID,COUNT(CourseID) AS Total_Courses FROM Course
  2  GROUP BY DepartmentID;

DEPARTMENTID TOTAL_COURSES
------------ -------------
           3             3
           4             2
           1             2
           2             1
           9             1
          10             1

6 rows selected.

SQL> SELECT Semester,COUNT(StudentID) AS Total_Students
  2  FROM Enrollment GROUP BY Semester;

SEMESTER             TOTAL_STUDENTS
-------------------- --------------
Sem-5                             4

SQL> SELECT CourseID, COUNT(StudentID) AS Total_Students
  2  FROM Enrollment GROUP BY CourseID HAVING COUNT(StudentID)>2;

no rows selected

SQL>