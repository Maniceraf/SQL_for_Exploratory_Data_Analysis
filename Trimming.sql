SELECT distinct street,
       -- Trim off unwanted characters from street
       trim(street, '0123456789#/.') AS cleaned_street
  FROM anesta95.ev311
 ORDER BY street;