SELECT
    -- photos.id,
    username
FROM users
LEFT JOIN photos ON users.id = photos.user_id
WHERE photos.id IS NULL;

-- include the photos.id if you want to see all the NULL values for photos.id