# String Functions
- *stringFunction.sql*
    - to launch the file *source fileName*

* Working with **CONCAT**
    - Combine data for cleaner output:
        - **SELECT CONCAT(author_fname, ' ', author_lname) AS Fullname FROM books;**

        - **SELECT author_fname AS first, author_lname AS last, CONCAT(author_fname, ' ', author_lname) AS Fullname FROM books;**

    - **CONCAT_WS**
        - Concat With Separator
        - Example:  
            - **SELECT CONCAT_WS(' - ', title, author_fname, author_lname) FROM books;**

* **SUBSTRING**
- Work With Parts of Strings
    - Example:
        - **SELECT SUBSTRING('Hello World', 1, 4);** *Hell*
        - **SELECT SUBSTRING('Hello World', 7);** *World*

        - **SELECT SUBSTRING('Hello World', -3);** *rld*
        - **SELECT SUBSTRING('Hello World', -7);** *o World*

        - **SELECT SUBSTRING(title, 1, 5) FROM books;**

    - **SUBSTR()** *also works*
        - *if SUBSTRING is just too much typing :)*
    
    - Example: *(short title + ...)*
    - also in *book_code.sql*
        - **SELECT CONCAT(SUBSTRING(title, 1, 10) , '...') AS short_title FROM books;**

* **REPLACE**
    - **SELECT REPLACE( 'Hello World', 'Hell', '%$#@');** *%$#@o World*
    - **SELECT REPLACE( 'Hello World', 'l', '7');** *He77o Wor7d*
    - **SELECT REPLACE( 'cheese bread coffee milk', ' ', ' and ');**
        - *replaceSubstring.sql* 

* **REVERSE**
    - Example:
        - **SELECT REVERSE('Hello World!');** *!dlroW olleH*
        - **SELECT REVERSE(article) FROM books;**

* **CHAR_LENGTH**
- Counts Characters in String
    - Example:
        - **SELECT CHAR_LENGTH('Hello World');** *11*
        - **SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;**
        - **SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') FROM books;**

* **UPPER()** and **LOWER()**
    - change a string's case
        - Example:  
            - **SELECT UPPER('Hello World');** *HELLO WORLD*
            - **SELECT LOWER('HELLO WORLD');** *hello world*

* **Exercise:**
    *exercise.sql*