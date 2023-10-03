CREATE TABLE legacy_comments(
    id INT PRIMARY KEY AUTO_INCREMENT,
    content VARCHAR(255) DEFAULT '' NOT NULL,
    created_at TIMESTAMP DEFAULT NOW() NOT NULL
);

INSERT INTO legacy_comments(content, created_at)
VALUES
    ('the first comment', '2022-01-11 08:10:20'),
    ('the second comment', '2022-11-10 15:45:55'),
    ('LOL!  Great comeback!!', '2023-02-22 19:21:56'),
    ('That belongs in the FAIL ARMY!!', NOW());

SELECT * FROM legacy_comments;

ALTER TABLE legacy_comments MODIFY COLUMN updated_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP NOT NULL;

DESC legacy_comments;

UPDATE legacy_comments
SET updated_at = '2022-02-11 06:05:01'
WHERE id = 1;

UPDATE legacy_comments
SET updated_at = '2022-11-11 16:00:00'
WHERE id = 2;

UPDATE legacy_comments
SET updated_at = '2023-04-20 23:10:30'
WHERE id = 3;

UPDATE legacy_comments
SET updated_at = NOW()
WHERE id = 4;

SELECT * FROM legacy_comments;