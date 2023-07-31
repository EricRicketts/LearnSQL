CREATE TABLE captions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    text VARCHAR(225),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO captions (text)
VALUES ('this is the first entry'),
       ('and this is the second entry');

ALTER TABLE captions ADD COLUMN updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP;

UPDATE captions
SET text = 'this is the first entry updated'
WHERE id = 1;

SELECT * FROM captions;
