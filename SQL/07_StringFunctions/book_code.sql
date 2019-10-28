SELECT
    CONCAT
    (
        SUBSTRING(title, 1, 10) ,
        '...'
    ) AS 'short_title'
FROM books;

SELECT 
    CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') 
FROM books;

SELECT
    CONCAT('MY FAVORITE BOOK IS THE ', UPPER(title))
FROM books;