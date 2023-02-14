-- A trigger block of code which will define a certain action when a operation is performed on the DB --

CREATE TABLE trigger_test (
    message VARCHAR(100)
)

-- Triggers are defined in the command line --
-- % ~/.bash_profile
-- % mysql -u root -p
-- % use {DB NAME}

-- Every time a value is added to the employee table add value to the trigger_test table --
-- Very helpful for automation --
DELIMITER $$ -- Chnages my SQL delimiter (default set to ;)
CREATE
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES('added new employee');
    END$$
DELIMINTER ;
-- Do ^ in command line

-- Insert into employee table
INSERT INTO employee
VALUES(109, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3);

-- It also updated trigger_test table 
SELECT * FROM trigger_test;

--------------------------------------------------------------------------------------------

DELIMITER $$
CREATE
    TRIGGER my_trigger1 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES(NEW.first_name);
    END$$
DELIMINTER ;

INSERT INTO employee
VALUES(110, 'Kevin', 'Malone', '1978-02-19', 'M', 69000, 106, 3);

SELECT * FROM trigger_test;

--------------------------------------------------------------------------------------------

DELIMITER $$
CREATE
    TRIGGER my_trigger2 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        IF NEW.sex = 'M' THEN
            INSERT INTO trigger_test VALUES('added male employee');
        ELSEIF NEW.sex = 'F' THEN
            INSERT INTO trigger_test VALUES('added female employee');
        ELSE
            INSERT INTO trigger_test VALUES('added other employee');
        END IF;
    END$$
DELIMINTER ;

INSERT INTO employee
VALUES(111, 'Pam', 'Beesly', '1988-02-19', 'F', 69000, 106, 3);

SELECT * FROM trigger_test;

-- In command line % DROP TRIGGER my_trigger --
-- This removes that trigger --