SELECT 
    l.states AS StateName
FROM 
    `ba-882-group3.NNDSS_Dataset.Location` l
LEFT JOIN 
    `ba-882-group3.NNDSS_Dataset.Weekly_Data` wd
ON 
    l.location_id = wd.location_id
WHERE 
    wd.current_week IS NULL OR wd.current_week = 0
GROUP BY 
    StateName;
