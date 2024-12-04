SELECT 
  mmwr_year, 
  mmwr_week, 
  COUNT(*) AS count
FROM `ba-882-group3.NNDSS_Dataset.Report`
GROUP BY mmwr_year, mmwr_week
HAVING COUNT(*) > 1
ORDER BY count DESC;