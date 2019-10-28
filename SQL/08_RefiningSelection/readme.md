# Refining Selection

* **DISTINCT**
*no repeating* 
- Example: 
    - **SELECT DISTINCT author_lname FROM books;**
    - **SELECT DISTINCT released_year FROM books;**
    - *distinct.sql*

* **ORDER BY**
- sorting our results
    - *orderBy.sql*
- **DESC** to reverse a list

* **LIMIT**
- *how mush rows in the table*
- Example:
    - *limit.sql*
    - **SELECT title FROM books LIMIT 3**;

* **LIKE**
    - better searching
    *instead of only WHERE*
    - Example: 
        - *like.sql*
        - **SELECT author_fname FROM books WHERE author_fname LIKE '%da%';**

    - Example 2: 
        - **SELECT stock_quantity FROM books WHERE stock_quantity LIKE '____';** *4 underscores - 4 digits long*