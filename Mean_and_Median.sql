/*  Use the percentile_disc() function to compute the median:
percent_disc(0.5)
WITHIN GROUP (ORDER BY column_name)
What groups are you computing statistics by?
Select the mean of assets with the avg function
Select the median
Computing statistics for each what?
Order results by a value of interest
*/
SELECT sector, AVG(assets) AS mean, percentile_disc(0.5) WITHIN GROUP (ORDER BY assets) AS median
FROM anesta95.fortune
GROUP BY sector
ORDER BY mean;