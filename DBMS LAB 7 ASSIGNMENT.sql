
SQL> SELECT Name FROM Student WHERE DepartmentID=(
  2  SELECT DepartmentID FROM Student WHERE StudentID ='1');

NAME
--------------------------------------------------
Nidhi

SQL> SELECT Name FROM Student WHERE Gender=(
  2  SELECT Gender FROM Student WHERE StudentID='2');

NAME
--------------------------------------------------
Nidhi
Milli
Mona
Jyoti

SQL> SELECT Name FROM Student WHERE DepartmentID=(
  2  SELECT DepartmentID FROM Student WHERE StudentID='3');

NAME
--------------------------------------------------
Mona

SQL> SELECT Name FROM Student WHERE DepartmentID IN(
  2  SELECT DepartmentID FROM Student WHERE Gender='Female');

NAME
--------------------------------------------------
Nidhi
Milli
Mona
Jyoti

SQL> SELECT Name FROM Student WHERE StudentID IN (
  2  SELECT StudentID FROM Enrollment);

NAME
--------------------------------------------------
Nidhi
Milli
Mona
Jyoti

SQL> SELECT CourseName FROM Course WHERE Credits > (
  2  SELECT AVG (Credits) FROM Course);

COURSENAME
--------------------------------------------------
Thermodynamics
Digital Electronics
Database Management System
Advanced Java
Thermal Engineering
Digital Signal Processing
Cloud Computing

7 rows selected.

SQL> SELECT * FROM Student WHERE StudentID > (
  2  SELECT AVG (StudentID) FROM Student);

 STUDENTID NAME                                               GENDER
---------- -------------------------------------------------- ----------
DATEOFBIR CONTACTNUMBER   DEPARTMENTID CITY                             SEMESTER
--------- --------------- ------------ ------------------------------ ----------
         6 Aniket                                             Male
17-JUL-02 99XXXXXX79                 6

         7 Pankaj                                             Male
20-MAY-03 80XXXXXX79                 7

         8 Rahul                                              Male
19-NOV-04 77XXXXXX90                 8


 STUDENTID NAME                                               GENDER
---------- -------------------------------------------------- ----------
DATEOFBIR CONTACTNUMBER   DEPARTMENTID CITY                             SEMESTER
--------- --------------- ------------ ------------------------------ ----------
         9 Raman                                              Male
10-DEC-03 80XXXXXX12                 9

        10 Shubham                                            Male
03-APR-02 97XXXXXX62                10

SQL> SELECT DepartmentID FROM Student
  2  GROUP BY DepartmentID HAVING COUNT(*) > (
  3  SELECT AVG(COUNT(*)) FROM Student GROUP BY DepartmentID
  4  );

no rows selected

SQL> SELECT Name FROM Student WHERE StudentID IN (
  2  SELECT StudentID FROM Enrollment
  3  );

NAME
--------------------------------------------------
Nidhi
Milli
Mona
Jyoti

SQL> SELECT Name FROM Student WHERE DepartmentID IS NOT NULL;

NAME
--------------------------------------------------
Nidhi
Milli
Mona
Jyoti
Puja
Aniket
Pankaj
Rahul
Raman
Shubham

10 rows selected.

SQL> SELECT CourseName FROM Course WHERE CourseID IN (
  2  SELECT CourseID FROM Enrollment
  3  );

COURSENAME
--------------------------------------------------
Database Management System
Thermodynamics
Digital Electronics
Power System

SQL> SELECT CourseName FROM Course WHERE Credits = (
  2  SELECT MAX(Credits) FROM Course
  3  );

COURSENAME
--------------------------------------------------
Thermodynamics
Digital Electronics
Database Management System
Advanced Java
Thermal Engineering
Digital Signal Processing
Cloud Computing

7 rows selected.

SQL> SELECT StudentID FROM Enrollment GROUP BY StudentID HAVING COUNT(CourseID) > 1;

no rows selected

SQL>  SELECT DepartmentID FROM Student GROUP BY DepartmentID HAVING COUNT(*) = (
  2  SELECT MAX(cnt)
  3  FROM (
  4   SELECT COUNT(*) AS cnt
  5  FROM Student
  6  GROUP BY DepartmentID
  7  )
  8  temp
  9  );

DEPARTMENTID
------------
           1
           2
           3
           4
           5
           6
           7
           8
           9
          10

10 rows selected.

SQL> SELECT DISTINCT StudentID FROM Enrollment
  2  WHERE CourseID IN (
  3  SELECT CourseID
  4  FROM Enrollment
  5  WHERE StudentID = '1'
  6  )
  7  AND StudentID <> '1';

no rows selected

SQL> SELECT Name FROM Student s
  2  WHERE NOT EXISTS (
  3  SELECT * FROM Enrollment e
  4  WHERE s.StudentID = e.StudentID
  5  );

NAME
--------------------------------------------------
Aniket
Pankaj
Rahul
Puja
Shubham
Raman

6 rows selected.

SQL> SELECT CourseName FROM Course c
  2  w
  3
SQL>  SELECT CourseName FROM Course c
  2  WHERE NOT EXISTS (
  3  SELECT * FROM Enrollment e
  4  WHERE c.CourseID = e.CourseID
  5  );

COURSENAME
--------------------------------------------------
Cloud Computing
Microprocessor
Structural Engineering
Thermal Engineering
Advanced Java
Digital Signal Processing

6 rows selected.

