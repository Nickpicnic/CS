-- MIN AND MAX functions

-- Find the minimum RELEASEC_YEAR;
SELECT 
    MIN(released_year)
FROM books;

SELECT 
    MIN(pages)
FROM books;

-- Find the maximum 
SELECT 
    MAX(pages)
FROM books;

SELECT
    MIN(pages), MAX(pages)
FROM books;

--SELECT MAX(pages), title FROM books; --  DOESN'T WORK
-- One Potential SOLUTION (but slow!!!):
SELECT title, pages FROM books
WHERE pages = (SELECT Max(pages) 
                FROM books);

-- OR:
SELECT 
    title, pages
FROM books
ORDER BY pages ASC LIMIT 1;

SELECT 
    title, pages
FROM books
ORDER BY pages DESC LIMIT 1;

-- BUT WE CAN USE IT ALSO WITH THE 'GROUP BY' FUNCTION:
    
    -- find the year each author published their first book:
    SELECT  author_fname,
            author_lname,
            Min(released_year)
    FROM    books
    GROUP   BY  author_lname,
                author_fname;

    -- find the longest pages book for each author
    SELECT  author_fname,
            author_lname,
            Max(pages)
    FROM    books
    GROUP   BY  author_fname,
                author_lname;

    -- cleaned up version:
    SELECT
        CONCAT(author_fname, ' ', author_lname) AS 'author',
        MAX(pages) AS 'longest_book'
        FROM books
        GROUP BY    author_fname,
                    author_lname;