-- Count rows
SELECT count(*)
  FROM anesta95.ev311
 -- Where description includes trash or garbage
 WHERE description ILIKE '%trash%'
    OR description ILIKE '%garbage%';
    
-- Select categories containing Trash or Garbage
SELECT category
  FROM anesta95.ev311
 -- Use LIKE
 WHERE category LIKE '%Trash%'
    OR category LIKE '%Garbage%';
    
-- Count rows
SELECT count(*)
  FROM anesta95.ev311 
 -- description contains trash or garbage
 WHERE (description ILIKE '%trash%'
    OR description ILIKE '%garbage%') 
 -- category does not contain trash or garbage
   AND category NOT LIKE '%Trash%'
   AND category NOT LIKE '%Garbage%';
   
   
-- Count rows with each category
SELECT category, count(*)
  FROM anesta95.ev311 
 WHERE (description ILIKE '%trash%'
    OR description ILIKE '%garbage%') 
   AND category NOT LIKE '%Trash%'
   AND category NOT LIKE '%Garbage%'
 -- What are you counting?
 GROUP BY category
 --- order by most frequent values
 ORDER BY count(*) DESC
 LIMIT 10;