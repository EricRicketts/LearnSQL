/*
    So in this case we need to find users who have signed up but never posted
    a photo.  Look at the ig_clone_data.sql for reference as that has all of
    the table definitions.
    I was confused initially I left joined with photos on the left, this did not
    give me the answer, so I switched and left joined with users on the left.
    This gave me the desired result.  It works because we take all of the users
    and see if they have a corresponding photo in the photos table.  Notice as
    with all LEFT JOIN we take ALL RECORDS in the table on the left (users in this case)
    and see if a given record in the LEFT table has a corresponding entry in the
    records of the RIGHT table.  A LEFT JOIN works in such a way that if there IS NOT
    a record from the left table in the right table then NULL will be displayed in
    the JOIN for the right table.  This is on display with the first query below, if
    a user record is not present in the photos table then photos.id, photos.image_url,
    photos.user_di, and photos.created_at are all NULL.
    The Instructor had a more succinct way of describing a LEFT JOIN.  In this case we
    will get all of the user record overlap with the photos records even if the user
    record has no overlap with the photos records.  This is because the LEFT JOIN will
    give us the representation of ALL records of users IN photos.

    If we were to reverse the LEFT JOIN and seek ALL representation of photos in users
    this would not give us what we want because ALL records in photos have a corresponding
    representation in users
*/
-- my solutions
SELECT
    *
FROM users
LEFT JOIN photos ON users.id = photos.user_id;

SELECT
    username
FROM users
LEFT JOIN photos ON users.id = photos.user_id
WHERE photos.id IS NULL;

-- with a RIGHT JOIN
SELECT
    *
FROM photos
RIGHT JOIN users ON users.id = photos.user_id;

SELECT
    username
FROM photos
RIGHT JOIN users ON users.id = photos.user_id
WHERE photos.id IS NULL;

-- Instructor solution
SELECT username
FROM users
LEFT JOIN photos
ON users.id = photos.user_id
WHERE photos.id IS NULL;