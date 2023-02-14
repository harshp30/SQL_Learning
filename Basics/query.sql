-- Grab all info from table
SELECT * 
FROM student; -- SELECT keyword is telling the DBMS that I want to retrive something from the DB

SELECT name, major 
FROM student;           -- Retrieve these specific columns

SELECT student.name 
FROM student;           -- Different format to be more direct

SELECT student.name, student.major 
FROM student                            -- Retrieve in ascending (default) order by name
ORDER BY name ASC;

SELECT student.name, student.major 
FROM student                            -- Retrieve in descending order by student_id
ORDER BY student_id DESC;

SELECT *
FROM student                    -- Order by major first and if there's any "ties" then order by student_id
ORDER BY major, student_id;

SELECT *
FROM student            -- Return specific amount of rows
LIMIT 2;

SELECT *
FROM student                    -- Combine ordering and limit
ORDER BY major, student_id
LIMIT 3;

SELECT *
FROM student                -- return by specific information
WHERE major = 'Biology';

-- Operators: <, >, <=, >=, =, <> (not equal), AND, OR

SELECT *
FROM student              
WHERE major <> 'Biology';

SELECT *
FROM student                    
WHERE student_id < 3 AND name <> 'Jack';

SELECT *
FROM student                    
WHERE name IN ('Claire', 'Kate', 'Mike'); -- IN selects if those values are in a group

SELECT *
FROM student                    
WHERE major IN ('Biology', 'Computer Science') AND student_id > 2;