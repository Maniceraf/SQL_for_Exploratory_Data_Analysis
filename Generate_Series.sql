--Recall: generate_series(from, to, step)
-- Select the min and max of question_count. For tag dropbox
SELECT min(question_count), max(question_count)
FROM anesta95.stackexchange
WHERE tag = 'dropbox';

-- Create lower and upper bounds of bins
SELECT generate_series(2200, 3050, 50) AS lower,
       generate_series(2250, 3100, 50) AS upper;
       
/* Bins created in previous step. Subset stackoverflow to just tag dropbox. 
Select lower, upper, and count(*) from previously created bins.
Join to dropbox and keep all rows from bins.
Compare question_count to lower and upper.
Order by lower to put bins in order.
Group by lower and upper to count values in each bin.
*/

WITH bins AS (
      SELECT generate_series(2200, 3050, 50) AS lower,
             generate_series(2250, 3100, 50) AS upper),
     dropbox AS (
      SELECT question_count 
        FROM anesta95.stackexchange
       WHERE tag ='dropbox') 
SELECT lower, upper, count(*)
  FROM bins
       LEFT JOIN dropbox
         ON question_count >= lower 
        AND question_count < upper
 GROUP BY lower, upper
 ORDER BY lower;