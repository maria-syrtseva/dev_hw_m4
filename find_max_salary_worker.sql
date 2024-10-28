Task 3

-- find max salary
SELECT NAME, SALARY
FROM worker
WHERE SALARY = (SELECT MAX(SALARY) FROM worker);