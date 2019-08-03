/*
Recall that you use date_part() as:

SELECT date_part('field', timestamp);
*/

-- Extract the month from date_created and count requests
SELECT date_part('month', date_created) AS month, 
       count(*)
  FROM anesta95.ev311
 -- Limit the date range
 WHERE date_created >= '2016-01-01'
   AND date_created < '2018-01-01'
 -- Group by what to get monthly counts?
 GROUP BY month
 ORDER BY month;
 
 -- Get the hour and count requests
SELECT date_part('hour', date_created) AS hour,
       count(*)
  FROM anesta95.ev311
 GROUP BY hour
 -- Order results to select most common
 ORDER BY count(*) DESC
 LIMIT 1;
 
 
SELECT date_part('hour', date_completed) AS hour,
       count(*)
  FROM anesta95.ev311
 GROUP BY hour
 ORDER BY hour;