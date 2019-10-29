-- SUM FUNCTION
SELECT Sum(pages) FROM books;

-- Sum with group by
    -- how many pages did each author write in total?
    SELECT  author_fname, 
            author_lname,
            Sum(pages)
    FROM    books
    GROUP   BY  author_fname,
                author_lname;