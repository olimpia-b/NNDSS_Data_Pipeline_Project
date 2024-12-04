# diseases being reported the most in 2023 and 2024
SELECT d.disease_name, COUNT(*) as total_reports
FROM `ba-882-group3.NNDSS_Dataset.Weekly_Data` w
JOIN `ba-882-group3.NNDSS_Dataset.Disease` d ON w.disease_id = d.disease_id
JOIN `ba-882-group3.NNDSS_Dataset.Report` r ON w.report_id = r.report_id
WHERE r.mmwr_year IN (2023, 2024)
GROUP BY d.disease_name
ORDER BY total_reports DESC;