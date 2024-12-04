SELECT 
    l.states AS StateName,
    wd.disease_id,
    SUM(wd.current_week) AS TotalCases
FROM 
    `ba-882-group3.NNDSS_Dataset.Weekly_Data` wd
JOIN 
    `ba-882-group3.NNDSS_Dataset.Location` l
ON 
    wd.location_id = l.location_id
WHERE 
    l.states IN ('TEXAS', 'MAINE') -- Replace with any location names
GROUP BY 
    StateName, wd.disease_id
ORDER BY 
    StateName, TotalCases DESC;
