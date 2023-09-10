-- find the most like photo on the Instagram clone along with the user who posted it
/*
    so if we INNER JOIN photos and likes and GROUP BY the likes.photo_id then
    we can see how many likes for each photo.  Then we just need to count the
    likes.photo_id and then order the output be the count just mentioned in descending
    order.
    We then need to use the photos table and find out from the FOREIGN KEY in that
    table, photos.user_id to see which user posted the photos by doing an INNER JOIN
    on photos.user_id = user.id
*/
SELECT
    username,
    image_url,
    likes.photo_id AS photo_liked,
    COUNT(likes.photo_id) AS count_photo_likes
FROM photos
INNER JOIN likes ON photos.id = likes.photo_id
INNER JOIN users ON photos.user_id = users.id
GROUP BY username, image_url, photo_liked
ORDER BY count_photo_likes DESC LIMIT 1;

-- Instructor Solution
SELECT
    username,
    photos.id,
    photos.image_url,
    COUNT(*) AS total
FROM photos
INNER JOIN likes ON photos.id = likes.photo_id
INNER JOIN users ON photos.user_id = users.id
GROUP BY photos.id, username, photos.image_url
ORDER BY total DESC LIMIT 1;