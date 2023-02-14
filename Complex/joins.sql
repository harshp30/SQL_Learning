INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);

-- Joins are used to combine two or more rows from tables based onthe related columns

-- FIND ALL BRANCHES AND THE NAME OF THEIR MANAGERS --
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch                                                 -- LEFT JOIN includes all rows from the left table (employee table)
ON employee.emp_id = branch.mgr_id;

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch                                                -- RIGHT JOIN includes all rows from the right table (branch table)
ON employee.emp_id = branch.mgr_id;



