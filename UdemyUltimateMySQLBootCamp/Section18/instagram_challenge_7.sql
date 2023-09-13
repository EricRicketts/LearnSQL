-- to handle the issue of bots on the website, find all the users who have like
-- every single photo on the site
/*
    The likes table consists of user_id, photo_id, and created_at columns.  user_id and
    photo_id are both FOREIGN KEYS referencing the user and photo tables and are also
    PRIMARY KEYS in the likes table.

    So we want to list the usernames as the output.  What we need is to identify every
    user who liked every photo on the site.  If we INNER JOIN the users table with the
    likes table we will get every user who like every photo as the likes table has
    references to the user and photos table (user_id and photo_id).

    I was not able to figure out the solution because I forgot to take advantage of the
    restriction in the likes table.  Note the last statement in the table,
    PRIMARY KEY(user_id, photo_id) this only allows for one instance of a like on
    a given photo.  if the same user likes a photo more than once then an error will be
    flagged as PRIMARY KEY(user_id, photo_id) only allows one unique combination of user_id
    and photo_id to exist.

    We can take advantage of this fact and for each user simply count the number of likes
    knowing that each like is unique for a given photo.  The final step is a filter where
    we search for the users that have liked with a number equal to the count of all the
    photos posted.

*/
-- instructor solution
USE ig_clone;
SELECT
    username,
    COUNT(photo_id) AS number_of_likes
FROM users
INNER JOIN likes ON users.id = likes.user_id
GROUP BY username
HAVING number_of_likes = (SELECT COUNT(*) FROM photos);