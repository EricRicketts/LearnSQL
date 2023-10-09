CREATE TABLE legacy_students(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) DEFAULT 'no first name' NOT NULL,
    last_name VARCHAR(100) DEFAULT 'no last name' NOT NULL
);

CREATE TABLE legacy_papers(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) DEFAULT 'no paper' NOT NULL,
    grade TINYINT UNSIGNED DEFAULT 0 NOT NULL,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES legacy_students(id)
    ON DELETE CASCADE
);

INSERT INTO legacy_students(first_name, last_name)
VALUES
    ('Caleb', 'Auer'),
    ('Samantha', 'Seven'),
    ('Raj', 'Raju'),
    ('Carlos', 'Mendez'),
    ('Lisa', 'Lightfoot');

INSERT INTO legacy_papers(student_id, title, grade)
VALUES
    (1, 'My First Book Report', 60),
    (1, 'My Second Book Report', 75),
    (2, 'Russian Literature Through The Ages', 94),
    (2, 'De Montaigne And The Art Of The Essay', 98),
    (4, 'Borges And Magical Realism', 89);

SELECT * FROM legacy_students;
SELECT * FROM legacy_papers;

SELECT
    first_name,
    last_name,
    title,
    grade
FROM legacy_students
INNER JOIN legacy_papers AS lp ON legacy_students.id = lp.student_id
ORDER BY grade DESC;

SELECT
    first_name,
    last_name,
    title,
    grade
FROM legacy_students
LEFT JOIN legacy_papers AS lp ON legacy_students.id = lp.student_id;

SELECT
    first_name,
    last_name,
    IFNULL(title, 'MISSING') AS title,
    IFNULL(grade, 0) AS grade
FROM legacy_students
LEFT JOIN legacy_papers AS lp ON legacy_students.id = lp.student_id;

SELECT
    first_name,
    last_name,
    IFNULL(ROUND(AVG(grade), 2), 0) AS average_grade
FROM legacy_students
LEFT JOIN legacy_papers AS lp ON legacy_students.id = lp.student_id
GROUP BY last_name, first_name
ORDER BY average_grade DESC;

SELECT
    first_name,
    last_name,
    IFNULL(ROUND(AVG(grade), 2), 0) AS average_grade,
    CASE
        WHEN AVG(grade) >= 75 THEN 'PASSING'
        ELSE 'FAILING'
    END AS passing_status
FROM legacy_students
LEFT JOIN legacy_papers AS lp ON legacy_students.id = lp.student_id
GROUP BY last_name, first_name
ORDER BY average_grade DESC;
