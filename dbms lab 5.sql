 SELECT
  2  s.STUDENT_ID,
  3  s.NAME,
  4  e.COURSE_ID
  5  FROM Student s
  6  INNER JOIN Enrollment e
  7  ON s.STUDENT_ID = e.Student_ID;

STUDENT_ID NAME                                                COURSE_ID
---------- -------------------------------------------------- ----------
         1 Milli                                                       1
         2 Mona                                                        2
         3 Nidhi                                                       3
         4 Jyoti                                                       4
         5 Riya                                                        5
         6 Shruti                                                      6
         7 Pihu                                                        7
         8 Sanjana                                                     8
         9 Sara                                                        9
        10 Ujala                                                      10

10 rows selected.

SQL> SELECT
  2      s.NAME,
  3      e.SEMESTER
  4  FROM Student s
  5  INNER JOIN Enrollment e
  6  ON s.STUDENT_ID = e.STUDENT_ID;

NAME                                               SEMESTER
-------------------------------------------------- --------------------
Milli                                              4
Mona                                               6
Nidhi                                              6
Jyoti                                              5
Riya                                               3
Shruti                                             2
Pihu                                               1
Sanjana                                            3
Sara                                               2
Ujala                                              1

10 rows selected.

SQL> SELECT
  2      s.NAME,
  3      e.GRADE
  4  FROM Student s
  5  INNER JOIN Enrollment e
  6  ON s.STUDENT_ID = e.STUDENT_ID;

NAME                                               GRADE
-------------------------------------------------- -----
Milli                                              B
Mona                                               A
Nidhi                                              B
Jyoti                                              A
Riya                                               B
Shruti                                             A
Pihu                                               B
Sanjana                                            A
Sara                                               A
Ujala                                              B

10 rows selected.

SQL> SELECT
  2      c.COURSE_NAME,
  3      c.CREDITS,
  4      f.NAME AS Faculty_Name
  5  FROM Course c
  6  INNER JOIN Faculty f
  7  ON c.FACULTY_ID = f.FACULTY_ID;

COURSE_NAME                                           CREDITS
-------------------------------------------------- ----------
FACULTY_NAME
--------------------------------------------------
DBMS                                                        4
Dr. R. Kumar

Operating System                                            4
Mr. A. Singh

Thermodynamics                                              3
Mrs. S. Verma


COURSE_NAME                                           CREDITS
-------------------------------------------------- ----------
FACULTY_NAME
--------------------------------------------------
Surveying                                                   3
Mr. P. Yadav

Power Systems                                               4
Dr. M. Sinha

Analog Electronics                                          3
Mr. N. Roy


COURSE_NAME                                           CREDITS
-------------------------------------------------- ----------
FACULTY_NAME
--------------------------------------------------
Web Technology                                              3
Dr. A. Jha

Engineering Physics                                         4
Mr. V. Mishra

Management Principles                                       3
Mrs. K. Gupta


COURSE_NAME                                           CREDITS
-------------------------------------------------- ----------
FACULTY_NAME
--------------------------------------------------
Workshop Practice                                           2
Mr. R. Das


10 rows selected.

SQL> SELECT
  2      c.COURSE_NAME
  3  FROM Course c
  4  INNER JOIN Faculty f
  5  ON c.FACULTY_ID = f.FACULTY_ID
  6  WHERE f.FACULTY_ID = 2;

COURSE_NAME
--------------------------------------------------
Operating System

SQL> SELECT
  2      f.NAME,
  3      f.DESIGNATION,
  4      c.COURSE_NAME
  5  FROM Faculty f
  6  INNER JOIN Course c
  7  ON f.FACULTY_ID = c.FACULTY_ID;

NAME
--------------------------------------------------
DESIGNATION
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Dr. R. Kumar
Professor
DBMS

Mr. A. Singh
Assistant Professor
Operating System

NAME
--------------------------------------------------
DESIGNATION
--------------------------------------------------
COURSE_NAME
--------------------------------------------------

Mrs. S. Verma
Associate Professor
Thermodynamics

Mr. P. Yadav
Assistant Professor

NAME
--------------------------------------------------
DESIGNATION
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Surveying

Dr. M. Sinha
Professor
Power Systems

Mr. N. Roy

NAME
--------------------------------------------------
DESIGNATION
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Assistant Professor
Analog Electronics

Dr. A. Jha
Professor
Web Technology


NAME
--------------------------------------------------
DESIGNATION
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Mr. V. Mishra
Lecturer
Engineering Physics

Mrs. K. Gupta
Assistant Professor
Management Principles

NAME
--------------------------------------------------
DESIGNATION
--------------------------------------------------
COURSE_NAME
--------------------------------------------------

Mr. R. Das
Instructor
Workshop Practice


10 rows selected.

SQL> SELECT
  2  s.NAME,
  3  c.COURSE_NAME
  4  FROM Student s
  5  INNER JOIN Enrollment e
  6  ON s.STUDENT_ID = e.STUDENT_ID
  7  INNER JOIN Course c
  8  ON e.COURSE_ID = c.COURSE_ID;

NAME
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Milli
DBMS

Mona
Operating System

Nidhi
Thermodynamics


NAME
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Jyoti
Surveying

Riya
Power Systems

Shruti
Analog Electronics


NAME
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Pihu
Web Technology

Sanjana
Engineering Physics

Sara
Management Principles


NAME
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Ujala
Workshop Practice


10 rows selected.

SQL> SELECT B
  2
SQL> SELECT
  2
SQL> SELECT
  2      s.NAME,
  3      c.COURSE_NAME,
  4      e.SEMESTER
  5  FROM Student s
  6  INNER JOIN Enrollment e
  7  ON s.STUDENT_ID = e.STUDENT_ID
  8  INNER JOIN Course c
  9  ON e.COURSE_ID = c.COURSE_ID;

NAME
--------------------------------------------------
COURSE_NAME                                        SEMESTER
-------------------------------------------------- --------------------
Milli
DBMS                                               4

Mona
Operating System                                   6

Nidhi
Thermodynamics                                     6


NAME
--------------------------------------------------
COURSE_NAME                                        SEMESTER
-------------------------------------------------- --------------------
Jyoti
Surveying                                          5

Riya
Power Systems                                      3

Shruti
Analog Electronics                                 2


NAME
--------------------------------------------------
COURSE_NAME                                        SEMESTER
-------------------------------------------------- --------------------
Pihu
Web Technology                                     1

Sanjana
Engineering Physics                                3

Sara
Management Principles                              2


NAME
--------------------------------------------------
COURSE_NAME                                        SEMESTER
-------------------------------------------------- --------------------
Ujala
Workshop Practice                                  1


10 rows selected.

SQL> SELECT
  2      s.NAME,
  3      c.COURSE_NAME,
  4      e.GRADE
  5  FROM Student s
  6  INNER JOIN Enrollment e
  7  ON s.STUDENT_ID = e.STUDENT_ID
  8  INNER JOIN Course c
  9  ON e.COURSE_ID = c.COURSE_ID
 10  WHERE e.SEMESTER = 4;

NAME
--------------------------------------------------
COURSE_NAME                                        GRADE
-------------------------------------------------- -----
Milli
DBMS                                               B


SQL> SELECT
  2  c.COURSE_NAME
  3  FROM Enrollmet e
  4  INNER JOIN Course c
  5  ON e.COURSE_ID = c.COURSE_ID
  6  WHERE e.STUDENT_ID = 1;
FROM Enrollmet e
     *
ERROR at line 3:
ORA-00942: table or view does not exist


SQL> SELECT
  2    c.COURSE_NAME
  3  FROM Enrollment e
  4   INNER JOIN Course c
  5   ON e.COURSE_ID = c.COURSE_ID
  6  WHERE e.STUDENT_ID = 1;

COURSE_NAME
--------------------------------------------------
DBMS

SQL> SELECT
  2      s.NAME,
  3      s.DEPARTMENT_ID,
  4      c.COURSE_NAME
  5  FROM Student s
  6  INNER JOIN Enrollment e
  7  ON s.STUDENT_ID = e.STUDENT_ID
  8  INNER JOIN Course c
  9  ON e.COURSE_ID = c.COURSE_ID;

NAME                                               DEPARTMENT_ID
-------------------------------------------------- -------------
COURSE_NAME
--------------------------------------------------
Milli                                                          1
DBMS

Mona                                                           1
Operating System

Nidhi                                                          2
Thermodynamics


NAME                                               DEPARTMENT_ID
-------------------------------------------------- -------------
COURSE_NAME
--------------------------------------------------
Jyoti                                                          3
Surveying

Riya                                                           4
Power Systems

Shruti                                                         5
Analog Electronics


NAME                                               DEPARTMENT_ID
-------------------------------------------------- -------------
COURSE_NAME
--------------------------------------------------
Pihu                                                           6
Web Technology

Sanjana                                                        7
Engineering Physics

Sara                                                           8
Management Principles


NAME                                               DEPARTMENT_ID
-------------------------------------------------- -------------
COURSE_NAME
--------------------------------------------------
Ujala                                                          9
Workshop Practice


10 rows selected.

SQL> SELECT
  2      c.DEPARTMENT_ID,
  3      c.COURSE_NAME
  4  FROM Course c
  5  INNER JOIN Faculty f
  6  ON c.FACULTY_ID = f.FACULTY_ID;

DEPARTMENT_ID COURSE_NAME
------------- --------------------------------------------------
            1 DBMS
            1 Operating System
            2 Thermodynamics
            3 Surveying
            4 Power Systems
            5 Analog Electronics
            6 Web Technology
            7 Engineering Physics
            8 Management Principles
            9 Workshop Practice

10 rows selected.

SQL> SELECT
  2      f.NAME,
  3      d.DEPARTMENT_NAME
  4  FROM Faculty f
  5  INNER JOIN Department d
  6  ON f.DEPARTMENT_ID = d.DEPARTMENT_ID;

NAME
--------------------------------------------------
DEPARTMENT_NAME
--------------------------------------------------
Dr. R. Kumar
Computer Science and Engineering

Mr. A. Singh
Computer Science and Engineering

Mrs. S. Verma
Mechanical Engineering


NAME
--------------------------------------------------
DEPARTMENT_NAME
--------------------------------------------------
Mr. P. Yadav
Civil Engineering

Dr. M. Sinha
Electrical Engineering

Mr. N. Roy
Electronics Engineering


NAME
--------------------------------------------------
DEPARTMENT_NAME
--------------------------------------------------
Dr. A. Jha
Information Technology

Mr. V. Mishra
Applied Science

Mrs. K. Gupta
MBA


NAME
--------------------------------------------------
DEPARTMENT_NAME
--------------------------------------------------
Mr. R. Das
Polytechnic


10 rows selected.

SQL> SELECT
  2      s.NAME,
  3      c.COURSE_NAME
  4  FROM Student s
  5  INNER JOIN Enrollment e
  6  ON s.STUDENT_ID = e.STUDENT_ID
  7  INNER JOIN Course c
  8  ON e.COURSE_ID = c.COURSE_ID
  9  WHERE s.DEPARTMENT_ID = 1;

NAME
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Milli
DBMS

Mona
Operating System


SQL> SELECT
  2      s.NAME,
  3      c.COURSE_NAME
  4  FROM Student s
  5  INNER JOIN Enrollment e
  6  ON s.STUDENT_ID = e.STUDENT_ID
  7  INNER JOIN Course c
  8  ON e.COURSE_ID = c.COURSE_ID
  9  ORDER BY s.NAME ASC;

NAME
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Jyoti
Surveying

Milli
DBMS

Mona
Operating System


NAME
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Nidhi
Thermodynamics

Pihu
Web Technology

Riya
Power Systems


NAME
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Sanjana
Engineering Physics

Sara
Management Principles

Shruti
Analog Electronics


NAME
--------------------------------------------------
COURSE_NAME
--------------------------------------------------
Ujala
Workshop Practice


10 rows selected.

SQL> SELECT
  2      c.COURSE_NAME,
  3      COUNT(e.STUDENT_ID) AS Total_Students
  4  FROM Course c
  5  INNER JOIN Enrollment e
  6  ON c.COURSE_ID = e.COURSE_ID
  7  GROUP BY c.COURSE_NAME;

COURSE_NAME                                        TOTAL_STUDENTS
-------------------------------------------------- --------------
DBMS                                                            1
Operating System                                                1
Thermodynamics                                                  1
Surveying                                                       1
Power Systems                                                   1
Analog Electronics                                              1
Web Technology                                                  1
Engineering Physics                                             1
Management Principles                                           1
Workshop Practice                                               1

10 rows selected.

SQL> SELECT
  2      f.NAME,
  3      COUNT(c.COURSE_ID) AS Total_Courses
  4  FROM Faculty f
  5  INNER JOIN Course c
  6  ON f.FACULTY_ID = c.FACULTY_ID
  7  GROUP BY f.NAME;

NAME                                               TOTAL_COURSES
-------------------------------------------------- -------------
Dr. R. Kumar                                                   1
Mr. A. Singh                                                   1
Mrs. S. Verma                                                  1
Mr. P. Yadav                                                   1
Dr. M. Sinha                                                   1
Mr. N. Roy                                                     1
Dr. A. Jha                                                     1
Mr. V. Mishra                                                  1
Mrs. K. Gupta                                                  1
Mr. R. Das                                                     1

10 rows selected.

SQL> SELECT
  2      s.DEPARTMENT_ID,
  3      COUNT(s.STUDENT_ID) AS Total_Students
  4  FROM Student s
  5  GROUP BY s.DEPARTMENT_ID;

DEPARTMENT_ID TOTAL_STUDENTS
------------- --------------
            1              2
            2              1
            3              1
            4              1
            5              1
            6              1
            7              1
            8              1
            9              1

9 rows selected.

SQL> SELECT
  2      c.COURSE_NAME,
  3      MAX(e.GRADE) AS Max_Grade
  4  FROM Course c
  5  INNER JOIN Enrollment e
  6  ON c.COURSE_ID = e.COURSE_ID
  7  GROUP BY c.COURSE_NAME;

COURSE_NAME                                        MAX_G
-------------------------------------------------- -----
DBMS                                               B
Operating System                                   A
Thermodynamics                                     B
Surveying                                          A
Power Systems                                      B
Analog Electronics                                 A
Web Technology                                     B
Engineering Physics                                A
Management Principles                              A
Workshop Practice                                  B

10 rows selected.
