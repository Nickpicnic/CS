SELECT UPPER( REVERSE
        (
            'Why does my cat look at me with such hatred?'
        )
    ) AS 'reversed';

SELECT 
    REPLACE(title, ' ', '_>')
FROM books;

SELECT
    author_lname            AS  'forwards', 
    REVERSE(author_lname)   AS  'backwards'
FROM books;

SELECT
    UPPER
    (
        CONCAT
        (
            author_fname, ' ', author_lname
        )
    ) AS 'full_name_in_caps'
FROM books;

SELECT 
    CONCAT_WS
    (
        ' ',
        title,
        'was released in',
        released_year
    ) AS 'blurb'
FROM books;

SELECT
    title, 
    CHAR_LENGTH(title) AS 'character_count'
FROM books;

SELECT 
    CONCAT( SUBSTRING( title, 1, 10), '...') AS 'short_title',
    CONCAT_WS(',', author_lname, author_fname) AS 'author',
    CONCAT(stock_quantity, ' in stock') AS 'quantity'
FROM books;