SELECT 
    disease_id,
    'All-Time' AS Period,
    SUM(current_week) AS TotalCases
FROM 
    `ba-882-group3.NNDSS_Dataset.Weekly_Data`
WHERE 
    disease_id = 8704807513
GROUP BY 
    disease_id, Period
ORDER BY 
    TotalCases DESC;
