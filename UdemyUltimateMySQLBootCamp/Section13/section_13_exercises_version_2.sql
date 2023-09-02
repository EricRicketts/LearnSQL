DROP TABLE papers;
DROP TABLE students;

CREATE TABLE students(
    id INT PRIMARY KEY AUTO_INCREMENT,
    last_name VARCHAR(100) DEFAULT 'No last name' NOT NULL,
    first_name VARCHAR(100) DEFAULT 'No last name' NOT NULL
);

CREATE TABLE papers(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) DEFAULT 'No paper title' NOT NULL,
    grade DECIMAL(5,2) DEFAULT '0.00' NOT NULL,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id)
    ON DELETE CASCADE
);

INSERT INTO students (first_name, last_name)
VALUES
    ('Caleb', 'Consumer'),
    ('Samantha', 'Strife'),
    ('Raj', 'Remark'),
    ('Carlos', 'Continue'),
    ('Lisa', 'Languish'),
    ('Wendy', 'Ricketts'),
    ('Eric', 'Ricketts');

INSERT INTO papers (student_id, title, grade ) VALUES
    (1, 'My First Book Report', 60),
    (1, 'My Second Book Report', 75),
    (2, 'Russian Lit Through The Ages', 94),
    (2, 'De Montaigne and The Art of The Essay', 98),
    (4, 'Borges and Magical Realism', 89),
    (6, 'American Literature In The Colonial Period', 95),
    (6, 'English Literature In The Elizabethan Period', 90);

SELECT * FROM students;
SELECT * FROM papers;

SELECT
    first_name,
    last_name,
    title,
    grade
FROM students
INNER JOIN papers
ON students.id = papers.student_id;

SELECT
    first_name,
    last_name,
    title,
    grade
FROM students
LEFT JOIN papers
ON students.id = papers.student_id;

SELECT
    first_name,
    last_name,
    IFNULL(title, 'MISSING'),
    IFNULL(grade, 0.00)
FROM students
LEFT JOIN papers
ON students.id = papers.student_id;

SELECT
    last_name,
    first_name,
    IFNULL(AVG(grade), 0.00) AS average_grade
FROM students
LEFT JOIN papers
ON students.id = papers.student_id
GROUP BY last_name, first_name;
