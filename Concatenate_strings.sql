-- Concatenate house_num, a space, and street
-- and trim spaces from the start of the result
SELECT trim(concat(house_num, ' ', street)) AS address
  FROM anesta95.ev311;