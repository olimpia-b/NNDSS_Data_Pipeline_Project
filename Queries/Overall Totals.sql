SELECT 
    COUNT(DISTINCT disease_id) AS TotalDiseases,
    COUNT(DISTINCT location_id) AS TotalLocations,
    SUM(current_week) AS TotalCases
FROM 
    `ba-882-group3.NNDSS_Dataset.Weekly_Data`;
