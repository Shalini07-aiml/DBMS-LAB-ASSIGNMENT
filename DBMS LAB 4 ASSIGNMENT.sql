SQL*Plus: Release 21.0.0.0.0 - Production on Mon Feb 23 08:22:15 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Mon Feb 23 2026 08:08:05 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL>  DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENTID                                 NOT NULL NUMBER(38)
 NAME                                               VARCHAR2(50)
 GENDER                                             VARCHAR2(10)
 DATEOFBIRTH                                        DATE
 CONTACTNUMBER                                      VARCHAR2(15)
 DEPARTMENTID                                       NUMBER(38)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           NUMBER(38)

SQL>   SELECT STUDENTID AS "Roll_No",
  2   NAME AS "Student_Name",
  3  DATEOFBIRTH AS "Date_Of_Birth",
  4   GENDER AS "Gender",
  5   CONTACTNUMBER AS "Contact_Number",
  6  DEPARTMENTID AS "Department_ID" FROM Student;

   Roll_No Student_Name                                       Date_Of_B
---------- -------------------------------------------------- ---------
Gender     Contact_Number  Department_ID
---------- --------------- -------------
         1 Nidhi                                              19-NOV-04
Female     9XXXXXXX01                  1

         2 Milli                                              11-FEB-06
Female     96XXXXXX01                  2

         3 Mona                                               11-FEB-04
Female     90XXXXXX06                  3


   Roll_No Student_Name                                       Date_Of_B
---------- -------------------------------------------------- ---------
Gender     Contact_Number  Department_ID
---------- --------------- -------------
         4 Jyoti                                              05-MAR-04
Female     90XXXXXX07                  4

         5 Puja                                               02-JAN-02
Male       90XXXXXX09                  5

         6 Aniket                                             17-JUL-02
Male       99XXXXXX79                  6


   Roll_No Student_Name                                       Date_Of_B
---------- -------------------------------------------------- ---------
Gender     Contact_Number  Department_ID
---------- --------------- -------------
         7 Pankaj                                             20-MAY-03
Male       80XXXXXX79                  7

         8 Rahul                                              19-NOV-04
Male       77XXXXXX90                  8

         9 Raman                                              10-DEC-03
Male       80XXXXXX12                  9


   Roll_No Student_Name                                       Date_Of_B
---------- -------------------------------------------------- ---------
Gender     Contact_Number  Department_ID
---------- --------------- -------------
        10 Shubham                                            03-APR-02
Male       97XXXXXX62                 10


10 rows selected.

SQL>  SET LINESIZE 200;
SQL> SET PAGESIZE 100;
SQL>  COLUMN STUDENTID FORMAT 999;
SQL> COLUMN NAME FORMAT A15;
SQL> COLUMN GENDER FORMAT A8;
SQL> COLUMN CONTACTNUMBER FORMAT A15;
SQL>  COLUMN DEPARTMENTID FORMAT 999;
SQL> COLUMN DATEOFBIRTH FORMAT A12;
SQL> SELECT STUDENTID,
  2  NAME,
  3  GENDER,
  4  DATEOFBIRTH,
  5  CONTACTNUMBER,
  6  DEPARTMENTID FROM Student;

STUDENTID NAME            GENDER   DATEOFBIRTH  CONTACTNUMBER   DEPARTMENTID
--------- --------------- -------- ------------ --------------- ------------
        1 Nidhi           Female   19-NOV-04    9XXXXXXX01                 1
        2 Milli           Female   11-FEB-06    96XXXXXX01                 2
        3 Mona            Female   11-FEB-04    90XXXXXX06                 3
        4 Jyoti           Female   05-MAR-04    90XXXXXX07                 4
        5 Puja            Male     02-JAN-02    90XXXXXX09                 5
        6 Aniket          Male     17-JUL-02    99XXXXXX79                 6
        7 Pankaj          Male     20-MAY-03    80XXXXXX79                 7
        8 Rahul           Male     19-NOV-04    77XXXXXX90                 8
        9 Raman           Male     10-DEC-03    80XXXXXX12                 9
       10 Shubham         Male     03-APR-02    97XXXXXX62                10

10 rows selected.

SQL> SELECT STUDENTID AS Roll_No,
  2   NAME AS Student_Name,
  3  DEPARTMENTID AS Dept_ID FROM Student;

   ROLL_NO STUDENT_NAME                                          DEPT_ID
---------- -------------------------------------------------- ----------
         1 Nidhi                                                       1
         2 Milli                                                       2
         3 Mona                                                        3
         4 Jyoti                                                       4
         5 Puja                                                        5
         6 Aniket                                                      6
         7 Pankaj                                                      7
         8 Rahul                                                       8
         9 Raman                                                       9
        10 Shubham                                                    10

10 rows selected.

SQL> SELECT FACULTYID AS "Faculty_ID",
  2  NAME AS "Faculty_Name",
  3   DESIGNATION AS "Designation",
  4  EMAIL AS "Email" FROM Faculty;

Faculty_ID Faculty_Name                                       Designation                                        Email
---------- -------------------------------------------------- -------------------------------------------------- --------------------------------------------------
       101 Dr M P Singh                                       Professor                                          mp.singh@bpmce.ac.in
       102 MITHILESH KUMAR                                    Professor                                          mithilesh.kumar@bpmce.ac.in
       103 Dr Ajay Giri                                       Professor                                          ajay.giri@bpmce.ac.in
       104 Prof Ashish Kumar Suman                            Professor                                          ashish.kumar@bpmce.ac.in
       105 VICKY ANAND                                        Professor                                          vicky.anand@bpmce.ac.in
       106 Dr AJAY KUMAR                                      Professor                                          Dr.ajay.kumar@bpmce.ac.in
       107 Dr Prity Kumari Choudhary                          Professor                                          Dr.Priti.kumari@bpmce.ac.in
       108 Puja Rani                                          Professor                                          Puja.rani@bpmce.ac.in
       109 Pankaj Kumar                                       Professor                                          Pankaj.kumar@bpmce.ac.in
       110 Arun Kumar                                         Professor                                          Arun.kumar@bpmce.ac.in

10 rows selected.

SQL>  SELECT COURSEID AS "Course_ID",
  2   COURSENAME AS "Course_Name",
  3  CREDITS AS "Credits",
  4   DEPARTMENTID AS "Department_ID",
  5   FACULTYID AS "Faculty_ID" FROM Course;

 Course_ID Course_Name                                           Credits Department_ID Faculty_ID
---------- -------------------------------------------------- ---------- ------------- ----------
       201 Thermodynamics                                              4             3        103
       202 Digital Electronics                                         4             4        104
       203 Database Management System                                  4             1        101
       204 Power System                                                3             3        104
       205 Advanced Java                                               4             1        105
       206 Microprocessor                                              3             2        106
       207 Thermal Engineering                                         4             3        107
       208 Digital Signal Processing                                   4             4        108
       209 Structural Engineering                                      3             9        109
       210 Cloud Computing                                             4            10        110

10 rows selected.

SQL> SELECT STUDENTID AS "Student",
  2   COURSEID AS "Course",
  3  SEMESTER AS "Semester",
  4  GRADE AS "Grade" FROM Enrollment;

   Student     Course Semester             Grade
---------- ---------- -------------------- -----
         1        203 Sem-5                A
         2        201 Sem-5                A
         3        202 Sem-5                B+
         4        204 Sem-5                B

SQL>  INSERT INTO Enrollment VALUES('5','5','205', 'Sem-5','A+');

1 row created.

SQL> INSERT INTO Enrollment VALUES('6','6','206', 'Sem-3','A+');

1 row created.

SQL>  INSERT INTO Enrollment VALUES('7','7','207', 'Sem-4','B+');

1 row created.

SQL>  INSERT INTO Enrollment VALUES('8','8','208', 'Sem-4','A');

1 row created.

SQL> INSERT INTO Enrollment VALUES('9','9','209', 'Sem-3','B');

1 row created.

SQL>  INSERT INTO Enrollment VALUES('10','10','210', 'Sem-6','B+');

1 row created.

SQL> SELECT * FROM Enrollment;

ENROLLMENTID STUDENTID   COURSEID SEMESTER             GRADE
------------ --------- ---------- -------------------- -----
           1         1        203 Sem-5                A
           2         2        201 Sem-5                A
           3         3        202 Sem-5                B+
           4         4        204 Sem-5                B
           5         5        205 Sem-5                A+
           6         6        206 Sem-3                A+
           7         7        207 Sem-4                B+
           8         8        208 Sem-4                A
           9         9        209 Sem-3                B
          10        10        210 Sem-6                B+

10 rows selected.

SQL> SELECT * FROM Student WHERE DEPARTMENTID='1';

STUDENTID NAME            GENDER   DATEOFBIRTH  CONTACTNUMBER   DEPARTMENTID CITY                             SEMESTER
--------- --------------- -------- ------------ --------------- ------------ ------------------------------ ----------
        1 Nidhi           Female   19-NOV-04    9XXXXXXX01                 1

SQL>  SELECT * FROM Student WHERE GENDER='Female';

STUDENTID NAME            GENDER   DATEOFBIRTH  CONTACTNUMBER   DEPARTMENTID CITY                             SEMESTER
--------- --------------- -------- ------------ --------------- ------------ ------------------------------ ----------
        1 Nidhi           Female   19-NOV-04    9XXXXXXX01                 1
        2 Milli           Female   11-FEB-06    96XXXXXX01                 2
        3 Mona            Female   11-FEB-04    90XXXXXX06                 3
        4 Jyoti           Female   05-MAR-04    90XXXXXX07                 4

SQL> SELECT * FROM Faculty WHERE DESIGNATION='Assistant Professor';

no rows selected

SQL> SELECT * FROM Faculty WHERE DEPARTMENTID='2';

 FACULTYID NAME            DESIGNATION                                        EMAIL                                              DEPARTMENTID
---------- --------------- -------------------------------------------------- -------------------------------------------------- ------------
       102 MITHILESH KUMAR Professor                                          mithilesh.kumar@bpmce.ac.in                                   2

SQL> SELECT * FROM Course WHERE CREDITS>=4;

  COURSEID COURSENAME                                            CREDITS DEPARTMENTID  FACULTYID
---------- -------------------------------------------------- ---------- ------------ ----------
       201 Thermodynamics                                              4            3        103
       202 Digital Electronics                                         4            4        104
       203 Database Management System                                  4            1        101
       205 Advanced Java                                               4            1        105
       207 Thermal Engineering                                         4            3        107
       208 Digital Signal Processing                                   4            4        108
       210 Cloud Computing                                             4           10        110

7 rows selected.

SQL> SELECT * FROM Student WHERE DATEOFBIRTH>TO_DATE('19-NOV-04','DD-MM-YYYY');

STUDENTID NAME            GENDER   DATEOFBIRTH  CONTACTNUMBER   DEPARTMENTID CITY                             SEMESTER
--------- --------------- -------- ------------ --------------- ------------ ------------------------------ ----------
        1 Nidhi           Female   19-NOV-04    9XXXXXXX01                 1
        2 Milli           Female   11-FEB-06    96XXXXXX01                 2
        3 Mona            Female   11-FEB-04    90XXXXXX06                 3
        4 Jyoti           Female   05-MAR-04    90XXXXXX07                 4
        5 Puja            Male     02-JAN-02    90XXXXXX09                 5
        6 Aniket          Male     17-JUL-02    99XXXXXX79                 6
        7 Pankaj          Male     20-MAY-03    80XXXXXX79                 7
        8 Rahul           Male     19-NOV-04    77XXXXXX90                 8
        9 Raman           Male     10-DEC-03    80XXXXXX12                 9
       10 Shubham         Male     03-APR-02    97XXXXXX62                10

10 rows selected.

SQL> SELECT * FROM Enrollment WHERE SEMESTER ='Sem-4';

ENROLLMENTID STUDENTID   COURSEID SEMESTER             GRADE
------------ --------- ---------- -------------------- -----
           7         7        207 Sem-4                B+
           8         8        208 Sem-4                A

SQL> SELECT * FROM Student ORDER BY NAME ASC;

STUDENTID NAME            GENDER   DATEOFBIRTH  CONTACTNUMBER   DEPARTMENTID CITY                             SEMESTER
--------- --------------- -------- ------------ --------------- ------------ ------------------------------ ----------
        6 Aniket          Male     17-JUL-02    99XXXXXX79                 6
        4 Jyoti           Female   05-MAR-04    90XXXXXX07                 4
        2 Milli           Female   11-FEB-06    96XXXXXX01                 2
        3 Mona            Female   11-FEB-04    90XXXXXX06                 3
        1 Nidhi           Female   19-NOV-04    9XXXXXXX01                 1
        7 Pankaj          Male     20-MAY-03    80XXXXXX79                 7
        5 Puja            Male     02-JAN-02    90XXXXXX09                 5
        8 Rahul           Male     19-NOV-04    77XXXXXX90                 8
        9 Raman           Male     10-DEC-03    80XXXXXX12                 9
       10 Shubham         Male     03-APR-02    97XXXXXX62                10

10 rows selected.

SQL> SELECT * FROM Student ORDER BY NAME DESC;

STUDENTID NAME            GENDER   DATEOFBIRTH  CONTACTNUMBER   DEPARTMENTID CITY                             SEMESTER
--------- --------------- -------- ------------ --------------- ------------ ------------------------------ ----------
       10 Shubham         Male     03-APR-02    97XXXXXX62                10
        9 Raman           Male     10-DEC-03    80XXXXXX12                 9
        8 Rahul           Male     19-NOV-04    77XXXXXX90                 8
        5 Puja            Male     02-JAN-02    90XXXXXX09                 5
        7 Pankaj          Male     20-MAY-03    80XXXXXX79                 7
        1 Nidhi           Female   19-NOV-04    9XXXXXXX01                 1
        3 Mona            Female   11-FEB-04    90XXXXXX06                 3
        2 Milli           Female   11-FEB-06    96XXXXXX01                 2
        4 Jyoti           Female   05-MAR-04    90XXXXXX07                 4
        6 Aniket          Male     17-JUL-02    99XXXXXX79                 6

10 rows selected.

SQL> SELECT * FROM Student ORDER BY DATEOFBIRTH DESC;

STUDENTID NAME            GENDER   DATEOFBIRTH  CONTACTNUMBER   DEPARTMENTID CITY                             SEMESTER
--------- --------------- -------- ------------ --------------- ------------ ------------------------------ ----------
        2 Milli           Female   11-FEB-06    96XXXXXX01                 2
        1 Nidhi           Female   19-NOV-04    9XXXXXXX01                 1
        8 Rahul           Male     19-NOV-04    77XXXXXX90                 8
        4 Jyoti           Female   05-MAR-04    90XXXXXX07                 4
        3 Mona            Female   11-FEB-04    90XXXXXX06                 3
        9 Raman           Male     10-DEC-03    80XXXXXX12                 9
        7 Pankaj          Male     20-MAY-03    80XXXXXX79                 7
        6 Aniket          Male     17-JUL-02    99XXXXXX79                 6
       10 Shubham         Male     03-APR-02    97XXXXXX62                10
        5 Puja            Male     02-JAN-02    90XXXXXX09                 5

10 rows selected.

SQL> SELECT * FROM Faculty ORDER BY Designation ASC;

 FACULTYID NAME            DESIGNATION                                        EMAIL                                              DEPARTMENTID
---------- --------------- -------------------------------------------------- -------------------------------------------------- ------------
       101 Dr M P Singh    Professor                                          mp.singh@bpmce.ac.in                                          1
       102 MITHILESH KUMAR Professor                                          mithilesh.kumar@bpmce.ac.in                                   2
       103 Dr Ajay Giri    Professor                                          ajay.giri@bpmce.ac.in                                         3
       104 Prof Ashish Kum Professor                                          ashish.kumar@bpmce.ac.in                                      4
           ar Suman

       110 Arun Kumar      Professor                                          Arun.kumar@bpmce.ac.in                                       10
       106 Dr AJAY KUMAR   Professor                                          Dr.ajay.kumar@bpmce.ac.in                                     6
       107 Dr Prity Kumari Professor                                          Dr.Priti.kumari@bpmce.ac.in                                   7
            Choudhary

       108 Puja Rani       Professor                                          Puja.rani@bpmce.ac.in                                         8
       109 Pankaj Kumar    Professor                                          Pankaj.kumar@bpmce.ac.in                                      9
       105 VICKY ANAND     Professor                                          vicky.anand@bpmce.ac.in                                       1

10 rows selected.

SQL> SELECT * FROM Faculty ORDER BY Designation DESC;

 FACULTYID NAME            DESIGNATION                                        EMAIL                                              DEPARTMENTID
---------- --------------- -------------------------------------------------- -------------------------------------------------- ------------
       101 Dr M P Singh    Professor                                          mp.singh@bpmce.ac.in                                          1
       102 MITHILESH KUMAR Professor                                          mithilesh.kumar@bpmce.ac.in                                   2
       103 Dr Ajay Giri    Professor                                          ajay.giri@bpmce.ac.in                                         3
       104 Prof Ashish Kum Professor                                          ashish.kumar@bpmce.ac.in                                      4
           ar Suman

       110 Arun Kumar      Professor                                          Arun.kumar@bpmce.ac.in                                       10
       106 Dr AJAY KUMAR   Professor                                          Dr.ajay.kumar@bpmce.ac.in                                     6
       107 Dr Prity Kumari Professor                                          Dr.Priti.kumari@bpmce.ac.in                                   7
            Choudhary

       108 Puja Rani       Professor                                          Puja.rani@bpmce.ac.in                                         8
       109 Pankaj Kumar    Professor                                          Pankaj.kumar@bpmce.ac.in                                      9
       105 VICKY ANAND     Professor                                          vicky.anand@bpmce.ac.in                                       1

10 rows selected.

SQL> SELECT * FROM Course ORDER BY CREDITS DESC;

  COURSEID COURSENAME                                            CREDITS DEPARTMENTID  FACULTYID
---------- -------------------------------------------------- ---------- ------------ ----------
       201 Thermodynamics                                              4            3        103
       202 Digital Electronics                                         4            4        104
       203 Database Management System                                  4            1        101
       205 Advanced Java                                               4            1        105
       208 Digital Signal Processing                                   4            4        108
       207 Thermal Engineering                                         4            3        107
       210 Cloud Computing                                             4           10        110
       206 Microprocessor                                              3            2        106
       209 Structural Engineering                                      3            9        109
       204 Power System                                                3            3        104

10 rows selected.

SQL> SELECT * FROM Student WHERE ROWNUM<=3;

STUDENTID NAME            GENDER   DATEOFBIRTH  CONTACTNUMBER   DEPARTMENTID CITY                             SEMESTER
--------- --------------- -------- ------------ --------------- ------------ ------------------------------ ----------
        1 Nidhi           Female   19-NOV-04    9XXXXXXX01                 1
        2 Milli           Female   11-FEB-06    96XXXXXX01                 2
        3 Mona            Female   11-FEB-04    90XXXXXX06                 3

SQL> SELECT * FROM Course WHERE ROWNUM <= 5;

  COURSEID COURSENAME                                            CREDITS DEPARTMENTID  FACULTYID
---------- -------------------------------------------------- ---------- ------------ ----------
       201 Thermodynamics                                              4            3        103
       202 Digital Electronics                                         4            4        104
       203 Database Management System                                  4            1        101
       204 Power System                                                3            3        104
       205 Advanced Java                                               4            1        105

SQL> SELECT COURSENAME,
  2   CREDITS+1 AS UPDATED_CREDITS FROM Course;

COURSENAME                                         UPDATED_CREDITS
-------------------------------------------------- ---------------
Thermodynamics                                                   5
Digital Electronics                                              5
Database Management System                                       5
Power System                                                     4
Advanced Java                                                    5
Microprocessor                                                   4
Thermal Engineering                                              5
Digital Signal Processing                                        5
Structural Engineering                                           4
Cloud Computing                                                  5

10 rows selected.

SQL>  SELECT NAME,
  2  TRUNC(MONTHS_BETWEEN(SYSDATE,DATEOFBIRTH)/12)AS Age FROM Student;

NAME                   AGE
--------------- ----------
Nidhi                   21
Milli                   20
Mona                    22
Jyoti                   21
Puja                    24
Aniket                  23
Pankaj                  22
Rahul                   21
Raman                   22
Shubham                 23

10 rows selected.

SQL>  SELECT STUDENTID,
  2  COURSEID,
  3  GRADE AS Final_Grade FROM Enrollment;

STUDENTID   COURSEID FINAL
--------- ---------- -----
        1        203 A
        2        201 A
        3        202 B+
        4        204 B
        5        205 A+
        6        206 A+
        7        207 B+
        8        208 A
        9        209 B
       10        210 B+

10 rows selected.

SQL>  SELECT NAME,
  2  EXTRACT (YEAR FROM DATEOFBIRTH) AS Year_of_Birth FROM Student;

NAME            YEAR_OF_BIRTH
--------------- -------------
Nidhi                    2004
Milli                    2006
Mona                     2004
Jyoti                    2004
Puja                     2002
Aniket                   2002
Pankaj                   2003
Rahul                    2004
Raman                    2003
Shubham                  2002

10 rows selected.

SQL> SELECT NAME,
  2   SUBSTR(EMAIL,INSTR(EMAIL,'@')+1)
  3   AS Email_Domain FROM Faculty;

NAME
---------------
EMAIL_DOMAIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Dr M P Singh
bpmce.ac.in

MITHILESH KUMAR
bpmce.ac.in

Dr Ajay Giri
bpmce.ac.in

Prof Ashish Kum
ar Suman
bpmce.ac.in

VICKY ANAND
bpmce.ac.in

Dr AJAY KUMAR
bpmce.ac.in

Dr Prity Kumari
 Choudhary
bpmce.ac.in

Puja Rani
bpmce.ac.in

Pankaj Kumar
bpmce.ac.in

Arun Kumar
bpmce.ac.in


10 rows selected.

SQL>
