/* Correlation between revenues and profit. Correlation between revenues and assets. Correlation between revenues and equity.
*/
SELECT corr(revenues, profits) AS rev_profits, corr(revenues, assets) AS rev_assets, corr(revenues, equity) AS rev_equity
FROM anesta95.fortune;