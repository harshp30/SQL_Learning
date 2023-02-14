-- On Delete Set Null --> Any associated values with that deleted employee will be set to null -- 
-- Usually used for Non Primary Keys -- 

DELETE FROM employee
WHERE emp_id = 102;

SELECT * from branch; -- Manager ID associated with Michael Scott is now set to Null since we deleted Michael Scott emp_id

SELECT * from employee;

-- On Delete Cascade --> Deletes associated rows of that person as well -- 
-- Usually used for Primary Keys -- 

DELETE FROM branch
WHERE branch_id = 2;

SELECT * from branch_supplier -- All supplier which supplied branch 2 have been removed