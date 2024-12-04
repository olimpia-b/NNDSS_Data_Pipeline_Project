SELECT 
    l.states AS StateName,
    SUM(wd.current_week) AS TotalCases
FROM 
    `ba-882-group3.NNDSS_Dataset.Weekly_Data` wd
JOIN 
    `ba-882-group3.NNDSS_Dataset.Location` l
ON 
    wd.location_id = l.location_id
WHERE 
    wd.disease_id = 1074326276 -- Replace with a specific disease ID
GROUP BY 
    StateName
ORDER BY 
    TotalCases DESC;
