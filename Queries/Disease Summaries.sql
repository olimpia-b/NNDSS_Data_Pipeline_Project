WITH RankedData AS (
    SELECT 
        disease_id,
        location_id,
        SUM(current_week) AS TotalCases,
        RANK() OVER (PARTITION BY location_id ORDER BY SUM(current_week) DESC) AS Rank
    FROM 
        `ba-882-group3.NNDSS_Dataset.Weekly_Data`
    GROUP BY 
        disease_id, location_id
)
SELECT 
    disease_id,
    location_id,
    TotalCases,
    Rank
FROM 
    RankedData
WHERE 
    Rank = 1
ORDER BY 
    TotalCases DESC;
