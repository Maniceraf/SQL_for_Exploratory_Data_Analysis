-- Select average revenue per employee by sector
SELECT sector, 
       AVG (revenues/employees::numeric) AS avg_rev_employee
  FROM anesta95.fortune
 GROUP BY sector
 -- Use the column alias to order the results
 ORDER BY avg_rev_employee;