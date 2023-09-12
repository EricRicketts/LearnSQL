-- find the average of how many times a given user posts
/*
    So my guess is a "post" in this case means posting a photo.  So I think we want to group
    by username and then average how many times each user posts to begin with
*/
USE ig_clone;
-- Instructor Solution
-- Note Round was not there originally, I added it to make the output more readable
SELECT
    ROUND((SELECT COUNT(*) FROM photos) /
    (SELECT COUNT(*) FROM users), 2) AS average_posts_per_user;
/*
    I was not able to figure out how to do this by using JOINS, below are some
    interesting solutions from students which take into account if a user has ever
    posted.  One solution does not factor in if a user has posted (like the author's
    original solution), the other solution does factor in if a user has posted.
*/
/*
    Below is the first solution with ROUND (which was not in the
    posted solution) without the ROUND the answer was 3.4730 with the ROUND the answer
    is 3.47.
    This average on takes into account those users who have posted as the INNER JOIN
    will only select users which are not NULL when joined with the photos table.  In
    other words the INNER JOIN guarantees every user appearing in the joined photos table
    has submitted a photo.
*/
SELECT
    ROUND(COUNT(photos.id)/COUNT(DISTINCT users.id), 2) AS avg
FROM users
INNER JOIN photos ON photos.user_id = users.id;

/*
    As with the example above the original solution was shown without the ROUND, the
    answer would be 2.5700, with the ROUND the answer is 2.57.
    The solution below considers all users even those who do not post.  This is because
    the LEFT JOIN on users will show the users who have not posted as those who have
    not posted will have a value of NULL in the photos table, i.e., with the LEFT JOIN
    a user who has not posted will have NULL values for photos.id, photos.image_url,
    photos.user_id, and photos.created_at.  The DISTINCT function is important as we
    do not want to count the same user who has posted multiple times.  The average
    we are looking at is total number of posts divided by total number of users where
    a user only appears one time.
*/
SELECT
    ROUND(COUNT(photos.id)/COUNT(DISTINCT users.id), 2) AS avg
FROM users
LEFT JOIN photos ON photos.user_id = users.id;