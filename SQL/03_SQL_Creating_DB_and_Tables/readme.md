# MySQL

* **Creating Databases**

* **Commands**:
    - show databases; 
    
    - CREATE DATABASE *name*;
        - CREATE DATABASE soap_store; *(is better)*
        - CREATE DATABASE DogApp;
        - CREATE DATABASE testing_db;
    
    - DROP DATABASE *name*;
        - DROP DATABASE testing_db;

    - USE *database_name*;

    - SELECT database();

<!-- -------------------------------------------------------- -->
# Tables!

* A database is just a bunch of **tables**. *(In a relational database, at least)*
    - Tables Hold The Data.
    - Terms: 
        - **Columns** (header)
        - **Rows** (the actual data)

    - The Importance of **Data Types**: 
        - The are **a lot** of different data types in mysql:
            - **Numeric Types:**
                - INT
                - SMALLINT
                - TINYINT
                - MEDIUMINT
                - BIGINT
                - DECIMAL
                - NUMERIC
                - FLOAT
                - DOUBLE
                - BIT

            - **String Types:**
                - CHAR
                - VARCHAR
                - BINARY
                - VARBINARY
                - BLOB
                - TINYBLOB
                - MEDIUMBLOB
                - LONGBLOB
                - TEXT
                - TINYTEXT
                - MEDIUMTEXT
                - LONGTEXT
                - ENUM

            - **Date Types:**
                - DATE
                - DATETIME
                - TIMESTAMP
                - TIME
                - YEAR


<!-- -------------------------------------------------------- -->
# Creating Tables!

CREATE TABLE tablename
    (
        column_name data_type,
        column_name data_type
    );

* *Example:* 
    CREATE TABLE cats
        (
            name VARCHAR(100),
            age INT
        );

* How do we know it worked?
    - SHOW TABLES;
    - SHOW COLUMNS FROM *tablename*; **or** DESC *tablename*;


<!-- -------------------------------------------------------- -->
# Dropping Tables!

* Deleting Tables.
    - DROP TABLE *tablename*;


<!-- -------------------------------------------------------- -->
*to launch the server: mysql -u root -p*