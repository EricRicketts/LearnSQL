DESC users;
SELECT
    id,
    username,
    created_at,
    DATEDIFF(NOW(), created_at) AS days_as_user
FROM users
ORDER BY created_at LIMIT 5;