-- Select the category and the average completion time by category
SELECT category, 
       AVG(date_completed - date_created) AS completion_time
  FROM anesta95.ev311
 GROUP BY category
-- Order the results
 ORDER BY 2 DESC;