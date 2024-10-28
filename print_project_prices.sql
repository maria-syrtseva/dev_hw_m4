Task 7

-- project price
SELECT 
    project.NAME AS Project_Name, 
    SUM(worker.SALARY) * 
    (DATEDIFF(project.FINISH_DATE, project.START_DATE) / 30) AS Project_Price
FROM 
    project
JOIN 
    project_worker ON project.ID = project_worker.PROJECT_ID
JOIN 
    worker ON project_worker.WORKER_ID = worker.ID
GROUP BY 
    project.ID, project.NAME
ORDER BY 
    Project_Price DESC;