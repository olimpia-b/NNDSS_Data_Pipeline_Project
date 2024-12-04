SELECT 
  mmwr_year, 
  COUNT(*) AS record_count
FROM `ba-882-group3.NNDSS_Dataset.Report`
GROUP BY mmwr_year
ORDER BY mmwr_year;