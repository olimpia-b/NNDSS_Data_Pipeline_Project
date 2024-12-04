SELECT 
  states, 
  COUNT(*) AS count
FROM `ba-882-group3.NNDSS_Dataset.Report`
GROUP BY states
ORDER BY count DESC
LIMIT 10;

SELECT 
  label, 
  COUNT(*) AS count
FROM `ba-882-group3.NNDSS_Dataset.Report`
GROUP BY label
ORDER BY count DESC
LIMIT 10;