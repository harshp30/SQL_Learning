-- % = any number of characters
-- _ = one character

-- FIND ANY CLIENTS WHO ARE AN LLC --
SELECT *
FROM client
WHERE client_name LIKE '%LLC';

-- FIND ANY BRANCH SUPPLIER WHO ARE IN THE LABEL BUSINESS --
SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '% Label%';

-- FIND ANY EMPLOYEE BORN IN OCTOBER --
SELECT *
FROM employee
WHERE birth_day LIKE '____-10%';

-- FIND ANY CLIENTS WHO ARE A SCHOOL --
SELECT *
FROM client
WHERE client_name LIKE '%school%';