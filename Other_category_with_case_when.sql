-- Use a case when statement to group zip codes 
-- with count less than 100 in an 'other' category
SELECT CASE WHEN count < 100 THEN 'other' 
       -- Cases where count is at least 100 
       -- should remain the same zip value
       ELSE zip
       -- End the statement and name the result
       END AS zip2,
       -- Also select the sum of the subquery count      
       SUM(count)
  -- Write the subquery to get each zip code and its count
  FROM (SELECT zip, count(*)
          FROM anesta95.ev311
         -- What do you need to group by? 
         -- Also, give the subquery a name
         GROUP BY zip) AS fullcounts
 -- Group by the recoded zip code column
 GROUP BY zip2
 -- Order so that most frequent zip codes are first
 ORDER BY SUM(count) DESC;