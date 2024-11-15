-- find max client projects
SELECT client.NAME, COUNT(project.ID) AS PROJECT_COUNT
FROM client
LEFT JOIN project ON client.ID = project.CLIENT_ID
GROUP BY client.ID, client.NAME
HAVING COUNT(project.ID) = (
    SELECT MAX(project_count)
    FROM (
        SELECT COUNT(*) AS project_count
        FROM project
        GROUP BY CLIENT_ID
    ) AS project_counts
);