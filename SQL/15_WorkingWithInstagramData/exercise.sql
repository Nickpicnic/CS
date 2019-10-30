-- CHALLENGE 1
-- show 5 oldest users
SELECT 
    username, 
    created_at
FROM users
ORDER BY 2
LIMIT 5;

-- CHALLENGE 2
-- what day of the week do most users registed on?

SELECT 
    DAYNAME(created_at) AS days,
    COUNT(*) AS '#_of_reg'
FROM users
GROUP BY 1
ORDER BY 2 DESC
LIMIT 2;

-- CHALLENGE 3
-- User who have never post a photo

SELECT
    username
FROM users
    LEFT JOIN photos
        ON users.id = photos.user_id
WHERE ISNULL(image_url);

-- CHALLENGE 4
-- Who get more likes on a single photo?

SELECT
    username,
    photos.id,
    photos.image_url,
    COUNT(*) AS total
FROM photos
    JOIN likes
        ON likes.photo_id = photos.id
    JOIN users
        ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY 4 DESC
LIMIT 1;

-- CHALLENGE 5
-- How many times does the average user post?

SELECT(
    (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users)
) AS average_posts;


-- CHALLENGE 6
-- What are the top 5 most commonly used hashtags?

SELECT 
    tags.tag_name,
    COUNT(*)
FROM tags
    JOIN photo_tags
        ON photo_tags.tag_id = tags.id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 7; -- because last 3 have exactly the same rating

-- CHALLENGE 7
-- Find users who have liked every single photo on the site.

SELECT
    users.username,
    COUNT(*) as total_likes
FROM likes
    JOIN users  
        ON users.id = likes.user_id
GROUP BY 1
HAVING total_likes = (SELECT COUNT(*) FROM photos)
ORDER BY 2;


        