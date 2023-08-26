CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) DEFAULT 'no first name' NOT NULL,
    last_name VARCHAR(100) DEFAULT 'no last name' NOT NULL
);

DROP TABLE papers;

CREATE TABLE papers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) DEFAULT 'No title' NOT NULL,
    grade DECIMAL(5, 2) DEFAULT '0.00' NOT NULL,
    student_id INT,
    FOREIGN KEY (student_id)
    REFERENCES students(id) ON DELETE CASCADE
);

INSERT INTO students (first_name, last_name) VALUES
    ('Caleb', 'Auer'), ('Samantha', 'Strong'), ('Raj', 'Raju'), ('Carlos', 'Can'), ('Lisa', 'Lips');

INSERT INTO papers (student_id, title, grade ) VALUES
    (1, 'My First Book Report', 60),
    (1, 'My Second Book Report', 75),
    (2, 'Russian Lit Through The Ages', 94),
    (2, 'De Montaigne and The Art of The Essay', 98),
    (4, 'Borges and Magical Realism', 89);

SELECT
    first_name,
    title,
    grade
FROM students
INNER JOIN papers AS p ON students.id = p.student_id
ORDER BY grade DESC;

SELECT
    first_name,
    title,
    grade
FROM students
LEFT JOIN papers AS p ON students.id = p.student_id;

SELECT
    first_name,
    IFNULL(title, 'MISSING') AS title,
    IFNULL(grade, 0) AS grade
FROM students
    LEFT JOIN papers AS p ON students.id = p.student_id;

SELECT
    first_name,
    IFNULL(AVG(grade), 0) AS average_grade
FROM students
LEFT JOIN papers p ON students.id = p.student_id
GROUP BY first_name
ORDER BY average_grade DESC;

SELECT
    first_name,
    IFNULL(AVG(grade), 0) AS average_grade,
    CASE
        WHEN AVG(grade) > 75 THEN 'PASSING'
        ELSE 'FAILING'
    END AS passing_status
FROM students
         LEFT JOIN papers p ON students.id = p.student_id
GROUP BY first_name
ORDER BY average_grade DESC;
