-- Count requests created on January 31, 2017
SELECT count(*) 
  FROM anesta95.ev311
 WHERE date_created::date = '2017-01-31';