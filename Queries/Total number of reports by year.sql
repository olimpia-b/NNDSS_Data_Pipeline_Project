# Total number of reports by year
SELECT mmwr_year, COUNT(*) as total_reports
FROM ba-882-group3.NNDSS_Dataset.Report
GROUP BY mmwr_year
ORDER BY mmwr_year;