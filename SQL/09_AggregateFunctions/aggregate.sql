-- COUNT function:
SELECT 
    COUNT(*) 
FROM books; -- 19 (books total)

-- how many authors?
SELECT 
    COUNT(DISTINCT author_fname) AS 'authors' 
FROM books; -- 12

-- how many unique authors full name?
SELECT 
    COUNT(DISTINCT CONCAT(author_fname, ' ', author_lname)) AS 'authors' 
FROM books;

-- how many contains 'the'?
SELECT 
    COUNT(title)
FROM books
WHERE title LIKE '%the%';