-- Bins from Step 1
WITH bins AS (
	 SELECT generate_series('2016-01-01',
                            '2018-01-01',
                            '6 months'::interval) AS lower,
            generate_series('2016-07-01',
                            '2018-07-01',
                            '6 months'::interval) AS upper),
-- Daily counts from Step 2
     daily_counts AS (
     SELECT day, count(date_created) AS count
       FROM (SELECT generate_series('2016-01-01',
                                    '2018-06-30',
                                    '1 day'::interval)::date AS day) AS daily_series
            LEFT JOIN anesta95.ev311
            ON day = date_created::date
      GROUP BY day)
-- Select bin bounds and median of count
SELECT lower, 
       upper, 
       percentile_disc(0.5) WITHIN GROUP (ORDER BY count) AS median
-- Join bins and daily_counts
  FROM bins
       LEFT JOIN daily_counts
-- Where the day is between the bin bounds
       ON day >= lower
          AND day < upper
-- Group by bin bounds
 GROUP BY lower, upper
 ORDER BY lower;