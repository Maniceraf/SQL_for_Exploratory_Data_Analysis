-- Select the original value
SELECT profits_change, 
	   -- Cast profits_change
       CAST(profits_change AS integer) AS profits_change_int
  FROM anesta95.fortune;
  
  -- Divide 10 by 3
SELECT 10/3, 
       -- Divide 10 cast as numeric by 3
       10::numeric/3;
       
SELECT '3.2'::numeric,
       '-123'::numeric,
       '1e3'::numeric,
       '1e-3'::numeric,
       '02314'::numeric,
       '0002'::numeric;