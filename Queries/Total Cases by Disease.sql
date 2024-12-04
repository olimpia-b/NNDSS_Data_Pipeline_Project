SELECT 
    disease_id,
    SUM(current_week) AS TotalCases
FROM 
    `ba-882-group3.NNDSS_Dataset.Weekly_Data`
GROUP BY 
    disease_id
ORDER BY 
    TotalCases DESC;
