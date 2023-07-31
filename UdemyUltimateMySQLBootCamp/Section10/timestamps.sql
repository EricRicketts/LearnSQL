CREATE TABLE captions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    text VARCHAR(225) DEFAULT '' NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

INSERT INTO captions (text)
VALUES ('this is the first entry'),
       ('and this is the second entry');

ALTER TABLE captions ADD COLUMN updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP NOT NULL;

UPDATE captions
SET text = 'this is the first entry updated'
WHERE id = 1;

SELECT * FROM captions;

ALTER TABLE captions MODIFY COLUMN text VARCHAR(255) DEFAULT '' NOT NULL;
ALTER TABLE captions MODIFY COLUMN updated_at TIMESTAMP NOT NULL;
ALTER TABLE captions MODIFY COLUMN created_at TIMESTAMP NOT NULL;
