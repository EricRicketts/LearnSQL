USE ig_clone;
SELECT
    username,
    created_at
FROM users
ORDER BY created_at LIMIT 5;