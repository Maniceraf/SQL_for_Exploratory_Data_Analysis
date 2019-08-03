-- Divide unanswered_count by question_count
SELECT unanswered_count/question_count::numeric AS computed_pct, 
       -- What are you comparing the above quantity to?
       unanswered_pct
  FROM anesta95.stackexchange
 -- eliminate rows where question_count is not 0
WHERE question_count != 0
LIMIT 10;