/*
    In order to find suspected bots we want a list of users who have liked every single photo on the
    site.

    The likes table contains references to user.id and photo.id.

    In the simplest terms for every user in the users table did they like all photos in the photos
    table?


*/
DESC likes;

SELECT
    user_id,
    username,
    COUNT(photo_id) AS number_of_photos_liked
FROM likes
INNER JOIN users ON likes.user_id = users.id
GROUP BY user_id
HAVING number_of_photos_liked = (SELECT COUNT(*) FROM photos);