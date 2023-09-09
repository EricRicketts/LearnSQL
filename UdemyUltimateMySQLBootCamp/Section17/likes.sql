CREATE TABLE likes(
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW() NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (photo_id) REFERENCES photos(id),
    PRIMARY KEY (user_id, photo_id)
);
/*
    The last statement in the "likes" table guarantees we cannot have multiple
    likes with the same user_id and photo_id, otherwise the same user and same photo
    could be liked without limit.
*/