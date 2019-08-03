-- Subtract the min date_created from the max
SELECT max(date_created) - min(date_created)
  FROM anesta95.ev311;
  
-- How old is the most recent request?
SELECT now() - max(date_created::date)
  FROM anesta95.ev311;
  
-- Add 100 days to the current timestamp
SELECT now() + '100 days'::interval
FROM anesta95.ev311;

-- Select the current timestamp, 
-- and the current timestamp + 5 minutes
SELECT now(), now() + '5 minutes'::interval;


