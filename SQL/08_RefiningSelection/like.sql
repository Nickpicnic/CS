-- includes 'da'
SELECT author_fname, title FROM books WHERE author_fname LIKE '%da%';

-- starts with 'da'
SELECT author_fname, title FROM books WHERE author_fname LIKE 'da%';

SELECT title FROM books WHERE title LIKE 'the%';

-- includes '%'
SELECT title FROM books WHERE title LIKE '%\%%';

-- includes '_'
SELECT title FROM books WHERE title LIKE '%\_%';