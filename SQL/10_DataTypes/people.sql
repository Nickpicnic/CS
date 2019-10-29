CREATE TABLE people(
    name VARCHAR(100),
    birthdate DATE, 
    birthtime TIME, 
    birthdt DATETIME
);

INSERT INTO people(
        name, 
        birthdate, 
        birthtime, 
        birthdt
    ) 
    VALUES (
        'Padma', 
        '1983-11-11', 
        '10:07:35', 
        '1983-11-11 10:07:35'
    );

INSERT INTO people(
        name, 
        birthdate, 
        birthtime, 
        birthdt
    ) 
    VALUES(
        'John', 
        CURDATE(), 
        CURTIME(), 
        NOW()
    );

    SELECT name, birthdate, DAY(birthdate) FROM people;
    SELECT name, birthdate, DAYNAME(birthdate) FROM people;
    SELECT name, birthdate, DAYOFWEEK(birthdate) FROM people;
    SELECT name, birthdate, DAYOFYEAR(birthdate) FROM people;

    -- "2019-10-29" to "October 29st 2019":
    SELECT CONCAT(
        MONTHNAME(NOW()),
        ' ',
        DAYOFMONTH(NOW()),
        'st ',
        YEAR(NOW())
    );

    -- OR
    SELECT DATE_FORMAT(NOW(), '%D %y %a %d %m %b %j');  -- 29th 19 Tue 29 10 Oct 302   
    SELECT DATE_FORMAT(NOW(), '%W %M %Y');              -- Tuesday October 2019 
    SELECT DATE_FORMAT(NOW(), '%m/%d/%y');              -- 10/29/19 




-- TIMESTAMPS

CREATE TABLE comments (
    content VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO comments (content) VALUES ('hello guys');
