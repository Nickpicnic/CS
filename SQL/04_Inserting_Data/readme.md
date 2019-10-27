# Inserting Data
* Adding Data to Your Tables

* **INSERT**
    - INSERT INTO cats(name, age) VALUES ('Jetson', 7);
    - **The Order Matters!**

* Check it worked:
    - SELECT * FROM *tablename*;

<!-- -------------------------------------------------------------------------- -->
* **Multiple INSERT**
    - INSERT INTO cats(name, age) VALUES ('Charlie', 10), ('Sadie', 3), ('Lazy Bear', 12);

    - Example: 
    - INSERT INTO people(first_name, last_name, age) VALUES('Tina', 'Belcher', 13), ('Bob', 'Belcher', 42), ('Linda', 'Belcher', 45), ('Phillip', 'Frond', 38), ('Calvin', 'Fischoeder', 70);

<!-- -------------------------------------------------------------------------- -->

* **MySQL Warnings**
- SHOW WARNINGS

<!-- -------------------------------------------------------------------------- -->
* **Null and Not Null**

    - Null does not means Zero

    - The Solution?
        - **Not NULL:**
            - CREATE TABLE cats2(name VARCHAR(100) NOT NULL, age INT NOT NULL);

<!-- -------------------------------------------------------------------------- -->
* **Setting Default Values**

    - CREATE TABLE cats3 ( name VARCHAR(100) DEFAULT 'unnamed', age INT DEFAULT 99 );

    - CREATE TABLE cats4 ( name VARCHAR(100) NOT NULL DEFAULT 'unnamed', age INT NOT NULL DEFAULT 99);

<!-- -------------------------------------------------------------------------- -->
* **A Primer On Primary Keys**
- How do we make each row **unique**?
    - **Primary Key** - A Unique Identifier!

    - **Example**: 
        - CREATE TABLE unique_cats (**cat_id INT NOT NULL**, name VARCHAR(100), age INT, PRIMARY KEY (cat_id)); 
        - INSERT INTO unique_cats (**cat_id**, name, age) VALUES(**1**, "Fred", 23);

    - But the **better** way is:
        - CREATE TABLE unique_cats (cat_id INT NOT NULL **AUTO_INCREMENT**, name VARCHAR(100), age INT, PRIMARY KEY (cat_id)); 