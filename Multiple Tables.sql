-- Query to select the first 10 rows from the 'users' table
SELECT * FROM users LIMIT 10;

-- Query to select the first 10 rows from the 'posts' table
SELECT * FROM posts LIMIT 10;

-- Query to select the first 10 rows from the 'subreddits' table
SELECT * FROM subreddits LIMIT 10;
-- Query to find the primary key of each table (This would usually be done by examining the schema)
-- For the purpose of demonstration, assuming 'id' is the primary key for each table
-- Foreign keys would be identified similarly by examining the schema and relationships
-- Query to count distinct subreddits
SELECT COUNT(DISTINCT name) FROM subreddits;
-- Query to find the user with the highest score
SELECT user_id FROM posts ORDER BY score DESC LIMIT 1;

-- Query to find the post with the highest score
SELECT id FROM posts ORDER BY score DESC LIMIT 1;

-- Query to find the top 5 subreddits with the highest subscriber_count
SELECT name FROM subreddits ORDER BY subscriber_count DESC LIMIT 5;
-- Query to find out how many posts each user has made
SELECT u.id, COUNT(p.id) AS post_count
FROM users u
LEFT JOIN posts p ON u.id = p.user_id
GROUP BY u.id
ORDER BY post_count DESC;
