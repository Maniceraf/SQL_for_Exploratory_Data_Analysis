-- Select the count of each value of revenues_change
SELECT revenues_change, count(revenues_change)
  FROM anesta95.fortune
 GROUP BY 1
 -- order by the values of revenues_change
 ORDER BY 1;
 
 -- Select the count of each revenues_change integer value
SELECT revenues_change::integer, count(revenues_change)
  FROM anesta95.fortune
 GROUP BY 1
 -- order by the values of revenues_change
 ORDER BY 1;
 
 -- Count rows 
SELECT count(*) AS "Number of Fortune 500 Companies with Positive Revenue"
  FROM anesta95.fortune
 -- Where...
 WHERE revenues_change > 0;