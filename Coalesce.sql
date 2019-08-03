SELECT COALESCE(industry, sector, 'Unknown') AS industry2, COUNT(*)
FROM anesta95.fortune
GROUP BY industry2
ORDER BY 2 DESC
LIMIT 1;