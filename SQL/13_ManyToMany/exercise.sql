-- challenge 1
SELECT title, rating
FROM series
    JOIN reviews
        ON reviews.series_id = series.id;

-- challenge 2
SELECT  
    title,
    AVG(rating) AS avg_rating
FROM series 
    JOIN reviews 
        ON reviews.series_id = series.id
GROUP BY series.id
ORDER BY 2;

-- challenge 3
SELECT 
    first_name, 
    last_name,
    rating
FROM reviewers
    JOIN reviews
        ON reviews.review_id = reviewers.id
WHERE first_name IN ('Thomas', 'Wyatt', 'Kimbra');

-- challenge 4
SELECT 
    title
FROM series
    LEFT JOIN reviews
        ON reviews.series_id = series.id
WHERE rating IS NULL;

-- challenge 5
SELECT
    genre, 
    ROUND(
        AVG(rating),
        2
    ) AS avg_rating
FROM series
    JOIN reviews
        ON reviews.series_id = series.id
GROUP BY 1;

-- challenge 6
SELECT 
    first_name, 
    last_name, 
    CASE 
        WHEN COUNT(*) = 1 THEN 0
        ELSE COUNT(*)
    END AS COUNT, 
    ROUND(IFNULL(MIN(rating), 0), 1) AS MIN,
    ROUND(IFNULL(MAX(rating), 0), 1) AS MAX, 
    ROUND(IFNULL(AVG(rating), 0), 2) AS AVG, 
    CASE 
        WHEN COUNT(*) = 1 THEN 'INACTIVE'
        ELSE 'ACTIVE'
    END AS STATUS
FROM reviewers
    LEFT JOIN reviews
        on reviews.review_id = reviewers.id
GROUP BY reviewers.id;

-- challenge 7
SELECT
    title,
    rating, 
    CONCAT(
        first_name, ' ', last_name
    ) AS reviews
FROM reviews
    JOIN series
        ON reviews.series_id = series.id
    JOIN reviewers
        ON reviews.review_id = reviewers.id
ORDER BY title;
    