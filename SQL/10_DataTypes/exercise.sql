CREATE TABLE inventory (
    item_name   CHARVAR(100),
    price       DECIMAL(7, 2),
    quantity    INT
)

SELECT CURTIME();

SELECT CURDATE();                               -- 2019-10-29 

SELECT DATE_FORMAT(CURDATE(), '%w');            -- 2

SELECT DATE_FORMAT(CURDATE(), '%W');            -- Tuesday    

SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');      -- 10/29/2019  

SELECT DATE_FORMAT(NOW(), '%M %D at %H:%m');    -- October 29th at 14:10      

-- OR

SELECT DAYOFWEEK(CURDATE());
SELECT DAYOFWEEK(NOW());
SELECT DATE_FORMAT(NOW(), '%w') + 1;
 
SELECT DAYNAME(NOW());
SELECT DATE_FORMAT(NOW(), '%W');
 
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');
 
SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');


CREATE TABLE tweets(
    content     VARCHAR(500),
    username    VARCHAR(100),
    created_at  TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
)