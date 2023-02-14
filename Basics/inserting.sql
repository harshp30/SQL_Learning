-- Remove table
DROP TABLE student;

-- Create Table
CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL, -- This column cannot be null
    major VARCHAR(20) UNIQUE, -- Forces unique values for each row in the 
    gpa DECIMAL(3,2) DEFAULT 0.00,
    PRIMARY KEY(student_id) -- All values must be unique or else insert won't work
);
-- NOT NULL, UNIQUE, DEFAULT, and AUTO_INCREMENT are known as constraints

-- Grab all info from table
SELECT * FROM student;

-- Insert into table (order of insertion must be same as table creation)
INSERT INTO student VALUES(1, 'Jack', 'Biology', 2.00);
INSERT INTO student(student_id, name, major) VALUES(2, 'Kate', 'Sociology'); -- Default 0.00 GPA gets inserted

-- Modified statement if some information is missing for insert
INSERT INTO student(student_id, name) VALUES(3, 'Claire'); -- Major gets inserted as null

INSERT INTO student VALUES(3, NULL, 'Chemistry)'; -- Errors out since Null is not allowed for name
INSERT INTO student VALUES(4, 'Jack', 'Biology'); -- Errors out since name major values must be unique
INSERT INTO student VALUES(5, 'James', 'Astrophysics', 4.00);

INSERT INTO student(name, major) VALUES('Mike', 'Computer Science'); -- Auto-increments student_id

