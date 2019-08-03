-- Count rows with each priority 
SELECT priority, count(*)
FROM anesta95.ev311
GROUP BY priority;

-- Find values of zip that appear in at least 100 rows
-- Also get the count of each value
SELECT zip, count(*)
  FROM anesta95.ev311
 GROUP BY zip
HAVING count(*) > 100; 

-- Find values of source that appear in at least 100 rows
-- Also get the count of each value
SELECT DISTINCT source, count(*)
FROM anesta95.ev311
GROUP BY source
HAVING count(*) > 100;

-- Find the 5 most common values of street and the count of each
SELECT street, count(*)
FROM anesta95.ev311
GROUP BY street
ORDER BY count(*) DESC
LIMIT 5;

