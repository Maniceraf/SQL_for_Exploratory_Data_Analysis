-- Select the first word of the street value
SELECT split_part(street, ' ', 1) AS street_name, 
       count(*)
  FROM anesta95.ev311
 GROUP BY street_name
 ORDER BY count DESC
 LIMIT 20;