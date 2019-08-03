SELECT street, COUNT(*)
FROM anesta95.ev311
GROUP BY street
ORDER BY street;

/*The street suffix is sometimes abbreviated
House/street numbers sometimes appear in the column
Capitalization is not consistent across values
*/