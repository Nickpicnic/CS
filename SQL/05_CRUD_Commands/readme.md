# CRUD
* **Basic Operations**: 
    - **C**reate 
    - **R**ead 
    - **U**pdate 
    - **D**elete

<!---------------------------------------------------------------------------------->

* **CREATE** *(review)*: 
    - INSERT INTO (...) VALUES(...)

<!---------------------------------------------------------------------------------->

* **READ**
- *example.sql*

* Official Introduction to **SELECT**
    
    - SELECT * FROM cats;  *star means all columns*
    - SELECT **name** FROM cats; 
    - SELECT **age** FROM cats;
    - SELECT **name, age** FROM cats;

* Official Introduction to **WHERE**

- We'll use **WHERE** all the time, not just to **SELECT**

* **Aliases**  
- *Easier to read results*
    - SELECT cat_id **AS** id, name FROM cats;

<!---------------------------------------------------------------------------------->

* **UPDATE**
- *how do we alter existing data?*
- **UPDATE** cats **SET** breed='Shorthair' **WHERE** breed='Tabby';

    - A Good Rule:
        - Try **SELECT**ing before you **UPDATE**
        
<!---------------------------------------------------------------------------------->

* **DELETE**

- DELETE FROM cats WHERE name='Egg';