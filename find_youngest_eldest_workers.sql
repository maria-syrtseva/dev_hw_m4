Task 6

-- youngest and eldest worker
WITH Youngest AS (
    SELECT NAME, BIRTHDAY
    FROM worker
    WHERE BIRTHDAY = (SELECT MIN(BIRTHDAY) FROM worker)
),
Eldest AS (
    SELECT NAME, BIRTHDAY
    FROM worker
    WHERE BIRTHDAY = (SELECT MAX(BIRTHDAY) FROM worker)
)
SELECT 'YOUNGEST' AS TYPE, NAME, BIRTHDAY FROM Youngest
UNION ALL
SELECT 'OLDEST', NAME, BIRTHDAY FROM Eldest;