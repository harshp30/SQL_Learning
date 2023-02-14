-- Grab all info from table
SELECT * FROM student;

-- Create Table
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20), -- This column cannot be null
    major VARCHAR(20), -- Forces unique values for each row in the 
    PRIMARY KEY(student_id) -- All values must be unique or else insert won't work
);

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Computer Science');
INSERT INTO student VALUES(3, 'Claire', 'Astrophysics');
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Biology');

-- Change a specific value within table
UPDATE student
SET major = 'Bio'                   -- Change major name to Bio where major was Biology
WHERE major = 'Biology';

UPDATE student
SET major = 'Comp Sci'              -- Change major name to Comp Sci where major was Computer Science
WHERE major = 'Computer Science';

UPDATE student
SET major = 'Astro'                 -- Change major name to Astro where student_id is 5
WHERE student_id = 5;

UPDATE student
SET major = 'Biochemistry'                  -- Change major name to Biochemistry where major was Bio OR Astro
WHERE major = 'Bio' OR major = 'Astro';

UPDATE student
SET name = 'Tom', major = 'undecided'   -- Change major name and student name where student_id is 1
WHERE  student_id = 1;

UPDATE student
SET major = 'undecided';  -- Changes all rows in table

DELETE FROM student
WHERE student_id = 5; -- Delete specific row

DELETE FROM student
WHERE name = 'Tom' AND major = 'undecided'; -- Delete specific row with conditions

DELETE FROM student; -- Delete everything from table