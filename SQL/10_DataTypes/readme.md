# DATA TYPES

* Storing **TEXT**
    - **CHAR**  CHAR has a fixed length!!! *(any value from 0 to 255)*
        - CHAR is faster for fixed length text:
            - State Abbreviations: CA, NY
            - Yes/No Flags: Y/N
            - Sex: M/F
    - **VARCHAR** *otherwise, because of flex*

    Value   | Char(4) | Storage | Varchar(4) | Storage
    :--     | :--:    | :--:    | :--:       | :--: 
    ''      | '    '  | 4 bytes | ''         | 1 byte
    'ab'    | 'ab  '  | 4 bytes | 'ab'       | 3 bytes
    'abcd'  | 'abcd'  | 4 bytes | 'abcd'     | 5 bytes
    'abcdef'| 'abcd'  | 4 bytes | 'abcdef'   | 5 bytes

* **NUMBERS**
    - **INT** 
        - *whole numbers*
    - **DECIMAL**
        - *fixed point*
        - DECIMAL(13, 2) *takes 2 arguments*
        - DECIMAL(5, 2)
            - 1 argument - **Total Numbers Of Digits**
            - 2 argument - **Digits After Decimal**
            - 999.99 - *5 digits long total, 2 after decimal*
    - **FLOAT** 
        - *stores larger numbers using less space, but at the cost og precision*
        - *float point*
    - **DOUBLE**
        - *stores larger numbers using less space, but at the cost og precision*

    Data Type   |   Memory Needed   |   Precision Issues
    :--         |   :--:            |   :--:
    FLOAT       |   4 bytes         |   ~7 digits
    DOUBLE      |   8 bytes         |   ~15 digits

* **DATE, TIME, and DATETIME**
    - **DATE**
        - *Values With a Date But No Time*
            - **'YYYY-MM-DD'** Format
    
    - **TIME**
        - *Values With a Time But No Date*
            - **'HH:MM:SS'** Format

    - **DATETIME**
        - *Values With a Date AND Time*
            - **'YYYY-MM-DD HH:MM:SS'** Format

* **Creating Our DATE data**
    - *people.sql*
    - *CREATE TABLE people(name VARCHAR(100),birthdate DATE, birthtime TIME, birthdt DATETIME);*
    - **INSERT INTO people(name, birthdate, birthtime, birthdt) VALUES ('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');**

* **CURDATE, CURTIME, and NOW**
    - **CURDATE()** - gives current day
    - **CURTIME()** - gives current time
    - **NOW()**     - gives current daytime
    
    - Example:  
        - *appear in this particular moment*
        - **INSERT INTO people(name, birthdate, birthtime, birthdt) VALUES('John', CURDATE(), CURTIME(), NOW());**

* Formatting **DATES**
    - DAY()
        - **SELECT name, birthdate, DAY(birthdate) FROM people;** - *return just a day*
    - DAYNAME()
        - **SELECT name, birthdate, DAYNAME(birthdate) FROM people;** - *Friday, Saturday, etc.*
    - DAYOFWEEK()
        - **SELECT name, birthdate, DAYOFWEEK(birthdate) FROM people;** - *number of the day of week*
    - DAYOFYEAR()
        - **SELECT name, birthdate, DAYOFYEAR(birthdate) FROM people;** - *number of the day of year*

    - MONTH()
    - MONTHNAME()
    - HOUR()
    - MINUTE()

    - **DATEFORMAT()**
        - **%D** - Day of the month with English suffix (0th, 1th, etc.)
        - **%d** - Day of the month numeric (00, .., 31)
        
        - **%M** - Month name
        - **%m** - Month numeric

        - **%W** - Week dayname
        - **%w** - week day numeric
            - *and more in docs.*


* **DATE MATH**
    - Two main functions: 
        - **DATEDIFF()**
        - Example:
            - **SELECT DATEDIFF('2007-12-31 23:59:59', '2007-12-30');**
            - **SELECT name, DATEDIFF(NOW(), birthdate) FROM people;**

        - **DATE_ADD()**
            - Example: 
                - **SELECT DATE_ADD('2100-12-31 23:59:59', INTERVAL '1:1' MINUTE_SECOND);**
                - **SELECT birthdt, DATE_ADD(bidrthdt, INTERVAL 1 MONTH) FROM people;**
                
        - **DATE_SUB()**

        - **+ / -**
            - date + INTERVAL **expr unit**
            - date - INTERVAL **expr unit**

* **TIMESTAMPS**
    - *saving metadata about time when something was creating*
    - Types:
        - DATE
        - DATETIME
            - range: **'1000-01-01'** to **'9999-12-31 23:59:59'**
        - TIMESTAMP
            - range: **'1970-01-01 00:00:01'** to **'2038-01-19 03:14:07'**