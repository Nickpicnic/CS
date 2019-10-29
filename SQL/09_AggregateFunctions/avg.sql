-- average function

    -- calculate the average RELEASED_YEAR across all books:
    SELECT 
        AVG(released_year)
    FROM books;
    
    -- calculate the average PAGES across all books:
    SELECT 
        AVG(pages)
    FROM books;

    -- calculate the avg stock quantity fot books released in the same year:
    SELECT 
        released_year,
        AVG(stock_quantity)
    FROM books
    GROUP BY released_year;

    -- calculate avg pages for each author
    SELECT
        author_fname,
        author_lname,
        AVG(pages)
    FROM    books
    GROUP BY    author_fname,
                author_lname;

    -- and cleaned up version:
    SELECT
        CONCAT(author_fname, ' ', author_lname) AS author,
        AVG(pages) AS 'average_pages'
    FROM books
    GROUP BY    author_fname,
                author_lname;