-- AGGREGATE FUNCTIONS EXERCISES:

SELECT 
    COUNT(title)
FROM books;

SELECT 
    COUNT(title),
    released_year
FROM books
GROUP BY released_year;

SELECT
    SUM(stock_quantity)
FROM books;

SELECT 
    AVG(released_year),
    CONCAT(author_fname, ' ', author_lname)
FROM books
GROUP BY    author_fname,
            author_lname;

SELECT  
    CONCAT(author_fname, ' ', author_lname) AS 'full_name',
    Max(pages)
FROM books
GROUP BY    author_fname,
            author_lname
ORDER BY Max(pages) DESC
LIMIT 1;

SELECT  
    released_year AS year,
    Count(title) AS '#_of_books',
    AVG(pages) AS 'avg_pages'
FROM books
GROUP BY released_year
ORDER BY released_year;