/*
The generate_series() function can be useful for identifying missing dates.

Recall:

generate_series(from, to, interval)
where from and to are dates or timestamps, and interval can be specified as a string with a number and a unit of time, such as '1 month'.
*/

SELECT day
-- Subquery to generate all dates
-- from min to max date_created
  FROM (SELECT generate_series(min(date_created::date),
                               max(date_created::date),
                               '1 day'::interval)::date AS day
          -- What table is date_created in?
          FROM anesta95.ev311) AS all_dates
-- Select dates (day from above) that are NOT IN the subquery
 WHERE day NOT IN 
       -- Subquery to select all date_created values as dates
       (SELECT date_created::date
          FROM anesta95.ev311);