-- Select the first 50 chars when length is greater than 50
SELECT CASE WHEN length(description) > 50
            THEN LEFT(description, 50) || '...'
       -- otherwise just select description
       ELSE description
       END
  FROM anesta95.ev311
 -- limit to descriptions that start with the word I
 WHERE description LIKE 'I %'
 ORDER BY description;