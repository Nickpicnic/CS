SELECT title, author_lname FROM books;

-- GROUP BY

SELECT 
    author_lname, COUNT(*)
FROM books
GROUP BY author_lname;

SELECT 
    released_year,
    COUNT(*)
FROM books
GROUP BY released_year;

SELECT 
    CONCAT
    (
        'IN ', released_year, ' ', COUNT(*), ' book(s) released '
    )
FROM books 
GROUP BY released_year;