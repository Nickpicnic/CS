# ONE TO MANY

* **RELATIONSHIPS AND JOINS**

* **Relationship basics**
    - **One to One** Relationship
    - **One to Many** Relationship
    - **Many to Many** Relationship

* **One to Many** *(1:MANY)*
    - *The Most Common*
    - Example:
        - Customers & Orders

    - **We Want To Store:**
        - A customer's first and last name
        - A customer's email
        - The date of the purchase
        - The price of the order

    - We also want to keep info about the DATE
        - *We could use one table...*
        - **BUT MUCH BETTER IDEA IS TO KEEP INFORMAION SEPARATE**
            - **Customers:**
                - **customer_id**
                - first_name
                - last_name
                - email
            - **Orders:**
                - order_id
                - order_date
                - amount
                - **customer_id**

            - **customer_id** and **order_id** are **PRIMARY_KEYS**

* **Working with Foreign Key**
    - *CustomersOrder.sql*

* **Types of JOINS:**
    - **CROSS JOIN**
        - Select all records from A and B where the join condition is met
    - **LEFT JOIN**
        - Select everything from A, along with any matching records in B
    - **RIGHT JOIN**
        - Select everything from B, along with any matching records in A
