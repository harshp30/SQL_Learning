-- Creating Table
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);

-- Get Key info about table
DESCRIBE student;

-- Remove table
DROP TABLE student;

-- Add a column
ALTER TABLE student ADD gpa DECIMAL(3,2);

-- Remove specific column
ALTER TABLE student DROP COLUMN gpa;
