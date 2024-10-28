Task 5 

-- the longest project
SELECT project.NAME, 
       EXTRACT(YEAR FROM project.FINISH_DATE - project.START_DATE) * 12 + 
       EXTRACT(MONTH FROM project.FINISH_DATE - project.START_DATE) AS MONTH_COUNT
FROM project
WHERE EXTRACT(YEAR FROM project.FINISH_DATE - project.START_DATE) * 12 + 
      EXTRACT(MONTH FROM project.FINISH_DATE - project.START_DATE) = (
          SELECT MAX(EXTRACT(YEAR FROM FINISH_DATE - START_DATE) * 12 + 
                      EXTRACT(MONTH FROM FINISH_DATE - START_DATE))
          FROM project
      );
