/*
    The query is to find the five most commonly used hashtags.

    The schema has a photos table (with id), a tags table (with id), and a photo_tags
    table with a photo_id and tag_id columns both serve as primary keys as well as
    foreign keys in the photo_tags table.

    Conceptually, we want to count all the unique hashtags but they must have an
    accompanying photo that they are related to.  It is the photo_tags table that ties
    the photos and tags together.  This is going to be an INNER JOIN because all tags
    should have a corresponding photo.

    So if I INNER JOIN the photos and tags table and count the results I should get the
    answer.  Note I tried this and did not use a GROUP BY which was a mistake as I just
    got a count of the total number of tags.  One needs to use GROUP BY in order to
    get the individual tag names and the count for each.
*/
SELECT
    tag_name,
    COUNT(tag_name) AS tag_count
FROM tags
INNER JOIN photo_tags ON tags.id = photo_tags.tag_id
INNER JOIN photos ON photo_tags.photo_id = photos.id
GROUP BY tag_name
ORDER BY tag_count DESC LIMIT 5;

-- Instructor solution
SELECT
    tag_name,
    COUNT(tag_name) AS tag_count
FROM tags
INNER JOIN photo_tags ON tags.id = photo_tags.tag_id
GROUP BY tags.id
ORDER BY tag_count DESC LIMIT 5;
/*
    It turns out I did not need to INNER JOIN with the photos table though it
    gave me the same answer as above.  I just need to INNER JOIN with the photos_tag
    table as that implies that the resulting join produces a tag associated with a
    photo.  This is because the tag_id will always be associated with a photo_id
    otherwise there will be no entry in the photos_tag table.
*/