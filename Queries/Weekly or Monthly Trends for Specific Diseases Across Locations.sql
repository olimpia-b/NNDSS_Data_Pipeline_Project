SELECT 
    disease_id,
    location_id,
    SUM(CASE WHEN current_week_flag = '1' THEN current_week ELSE 0 END) AS current_week_total,
    MAX(CASE WHEN previous_52_week_max_flag IS NOT NULL THEN previous_52_week_max ELSE NULL END) AS previous_52_week_max,
    SUM(CASE WHEN cumulative_ytd_flag IS NOT NULL THEN cumulative_ytd ELSE 0 END) AS cumulative_ytd_total,
    SUM(CASE WHEN cumulative_ytd_previous_flag IS NOT NULL THEN cumulative_ytd_previous ELSE 0 END) AS cumulative_ytd_previous_total
FROM 
    `ba-882-group3.NNDSS_Dataset.Weekly_Data`
GROUP BY 
    disease_id, location_id
ORDER BY 
    disease_id, location_id;
