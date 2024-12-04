## Identify Locations with High Weekly Peaks

SELECT location_id, disease_id, MAX(previous_52_week_max) AS highest_weekly_peak
FROM `ba-882-group3.NNDSS_Dataset.Weekly_Data`
GROUP BY location_id, disease_id
ORDER BY highest_weekly_peak DESC
LIMIT 10;
