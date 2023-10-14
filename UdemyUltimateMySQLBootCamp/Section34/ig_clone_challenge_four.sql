DESC users;
DESC likes;
DESC photos;
/*
    This query is trying to find the most liked photo on or instagram clone, not only the photo
    but who posted the photo.
    We can start by grouping the photo_id from the likes table, then we can count the number of
    photo_ids in each group, this is the number we ultimately want.  After this we just need two
    inner joins, one with the photos table to get the image_url and then one with the users table
    to get the username.
*/

SELECT
    photo_id,
    image_url,
    username,
    COUNT(*) AS number_of_likes
FROM likes
INNER JOIN photos ON likes.photo_id = photos.id
INNER JOIN users ON photos.user_id = users.id
GROUP BY photo_id
# ORDER BY number_of_likes DESC;
ORDER BY number_of_likes DESC LIMIT 1;

-- we can uncomment the line above and comment out the line below to get all the number of likes
-- in descending order
