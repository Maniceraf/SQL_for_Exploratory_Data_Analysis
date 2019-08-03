SELECT company_original.name, title, rank
  -- Start with original company information
  FROM anesta95.company_db AS company_original
       -- Join to another copy of company with parent
       -- company information
	   LEFT JOIN anesta95.company_db AS company_parent
       ON company_original.parent_id = company_parent.id 
       -- Join to fortune500, only keep rows that match
       INNER JOIN anesta95.fortune 
       -- Use parent ticker if there is one, 
       -- otherwise original ticker
       ON coalesce(company_parent.ticker, 
                   company_original.ticker) = 
             anesta95.fortune.ticker
 -- For clarity, order by rank
 ORDER BY rank; 