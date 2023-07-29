ALTER TABLE people
    ADD BirthDate DATE DEFAULT '1900:01:01' NOT NULL;
ALTER TABLE people
    ADD BirthTime TIME NOT NULL;
ALTER TABLE people
    ADD BirthDateTime DATETIME DEFAULT '1900:01:01 00:00:00' NOT NULL;

CREATE TABLE more_people (
    id INT PRIMARY KEY AUTO_INCREMENT,
    last_name VARCHAR(100) DEFAULT '' NOT NULL,
    first_name VARCHAR(100) DEFAULT '' NOT NULL,
    middle_name VARCHAR(100) DEFAULT '' NOT NULL,
    birth_date DATE DEFAULT '1901-01-01' NOT NULL,
    birth_time TIME DEFAULT '00:00:00' NOT NULL,
    birth_date_time DATETIME DEFAULT '1901-01-01 00:00:00' NOT NULL
);

INSERT INTO more_people (first_name, last_name, birth_date)
VALUES('Ben', 'Bright', '1936-01-02');

INSERT INTO more_people (first_name, last_name, birth_time)
VALUES('Fred', 'Fuchs', '13:21:12');

INSERT INTO more_people (first_name, last_name, birth_date_time)
VALUES('Chris', 'Carlisle', '1945-11-22 04:30:20');
