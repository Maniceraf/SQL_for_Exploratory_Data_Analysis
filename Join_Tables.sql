-- Returns first 100 rows from anesta95.fortune
SELECT * FROM anesta95.fortune LIMIT 100;


-- Returns first 100 rows from anesta95.company
SELECT * FROM anesta95.company_db LIMIT 100;


SELECT name
FROM anesta95.company_db
  INNER JOIN anesta95.fortune
  ON anesta95.company_db.ticker = anesta95.fortune.ticker;