# LOGICAL OPERATORS

* **NOT Equal**
    - != 
    - SELECT title, released_year FROM books WHERE released_year **!=** 2017;
    - SELECT title, author_lname FROM books WHERE author_lname **!=** 'Harris';

* **NOT LIKE**
    - SELECT title FROM books WHERE title LIKE 'W%';
    - SELECT title FROM books WHERE title **NOT LIKE** 'W%';

* **GREATER** THAN
    - SELECT title, released_year FROM books WHERE released_year **>=** 2000 ORDER BY released_year;
    - SELECT title, stock_quantity FROM books WHERE stock_quantity **>=** 100;
   
    - SELECT 99 > 1;        *return 1*
    - SELECT 99 > 567;      *return 0*

* **LESS** THAN
    - SELECT title, released_year FROM books WHERE released_year **<** 2000 ORDER BY released_year;

* **Logical AND** 
    - SELECT title, author_lname, released_year FROM books WHERE author_lname='Eggers' **AND** released_year > 2010;
    - SELECT * FROM books WHERE author_lname='Eggers' **AND** released_year > 2010 **AND** title LIKE '%novel%';
    
    - SELECT 1 < 5 **&&** 7 = 9;            *false*
    - SELECT -10 > -20 **&&** 0 <= 0;       *true*

* **Logical OR**
    - SELECT title, author_lname, released_year FROM books WHERE author_lname='Eggers' **||** released_year > 2010;
    - SELECT 'a' = 5 **||** 3000 > 2000; *true*

* **BETWEEN**
    - *combination of **>=** and **<=***
    - **BETWEEN x AND y**
    
* **NOT BETWEEN**
    - *combination of **>** and **<***
    - **NOT BETWEEN x AND y**

* **CAST**
    - use for comparing dates!
    - **SELECT CAST('2017-05-02' AS DATETIME);**
        - SELECT name, birthdt FROM people WHERE birthdt **BETWEEN** **CAST**('1980-01-01' AS DATETIME) **AND** **CAST**('2000-01-01' AS DATETIME);

* **IN** and **NOT IN**
    - SELECT title, author_lname FROM books WHERE author_lname **IN** ('Carver', 'Lahiri', 'Smith');
    - SELECT title, released_year FROM books WHERE released_year >= 2000 **AND** released_year **NOT IN** (2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016);

* **MODULO** 
    - SELECT title, released_year FROM books WHERE released_year >= 2000 AND released_year **% 2 != 0**;

* **Case Statement**
    *case.sql*