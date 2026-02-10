CREATE DATABASE student_db;
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    course VARCHAR(100)
);       

INSERT INTO students (first_name, last_name, age, course)
VALUES ('John', 'Doe', 20, 'Computer Science'),
       ('Jane', 'Smith', 22, 'Mathematics');
       
UPDATE students
SET course = 'Data Science'
WHERE student_id = 1;
       
DELETE FROM students
WHERE student_id = 2;

ALTER TABLE students
ADD email VARCHAR(100);

ALTER TABLE students
MODIFY age SMALLINT;
       
ALTER TABLE students
DROP COLUMN email;
