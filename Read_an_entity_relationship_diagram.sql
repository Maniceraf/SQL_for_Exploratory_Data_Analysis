-- Count the number of tags with each type
SELECT type, count(*) AS count
  FROM anesta95.tag_type
 -- To get the count for each type, what do you need to do?
 GROUP BY type
 -- Order the results with the most common
 -- tag types listed first
 ORDER BY count DESC;
 
 -- Select the 3 columns desired
SELECT company_db.name, tag_type.tag_type, tag_type.type
  FROM anesta95.company_db
  	   -- Join to the tag_company table
       LEFT JOIN anesta95.tag_company 
       ON anesta95.company_db.id = anesta95.tag_company.company_id
       -- Join to the tag_type table
       LEFT JOIN anesta95.tag_type
       ON anesta95.tag_company.company_id = anesta95.tag_type.id
  -- Filter to most common type
  WHERE type='cloud';