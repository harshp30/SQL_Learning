-- FIND A LIST OF EMPLOYEE AND BRANCH NAMES --
SELECT first_name AS Company_Names
FROM employee
UNION                 -- Joins multiple Queries into one request
SELECT branch_name
FROM branch
UNION
SELECT client_name
FROM client;


-- Rule 1: Must have same number of columns in SELECT statement
-- RUle 2: Must be same datatype

-- SELECT first_name, birth_date
-- FROM employee
-- UNION                                -- Wouldn't work
-- SELECT branch_name
-- FROM branch;


-- FIND A LIST OF ALL CLIENTS AND BRANCH SUPPLIER NAMES --
SELECT client_name AS name, client.branch_id AS id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

-- FIND A LIST OF ALL MONEY SPENT OF EARNED BY COMPANY --
SELECT salary AS money
FROM employee
UNION
SELECT total_sales
FROM works_with;