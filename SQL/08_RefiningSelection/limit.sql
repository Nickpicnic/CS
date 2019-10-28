-- return 3 rows:
SELECT title FROM books LIMIT 3;

-- books for 5 last years
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5;

-- select 3 rows from the 2 
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 2,3;