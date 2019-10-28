-- normal order:
SELECT author_lname FROM books ORDER BY author_lname;

-- reversed:
SELECT author_lname FROM books ORDER BY author_lname DESC;

-- nums also:
SELECT released_year FROM books ORDER BY released_year;

-- or nums reversed:
SELECT released_year FROM books ORDER BY released_year DESC;

-- ordered by the second column (author_fname):
SELECT title, author_fname, author_lname
FROM books ORDER BY 2;

-- ordered by two columns:
SELECT author_fname, author_lname FROM books
ORDER BY author_lname, author_fname;