WITH DiseaseTotals AS (
    SELECT 
        wd.location_id,
        l.states AS StateName,
        wd.disease_id,
        SUM(wd.current_week) AS TotalCases
    FROM 
        `ba-882-group3.NNDSS_Dataset.Weekly_Data` wd
    JOIN 
        `ba-882-group3.NNDSS_Dataset.Location` l
    ON 
        wd.location_id = l.location_id
    GROUP BY 
        wd.location_id, l.states, wd.disease_id
)
SELECT 
    StateName,
    disease_id,
    TotalCases
FROM (
    SELECT 
        StateName,
        disease_id,
        TotalCases,
        RANK() OVER (PARTITION BY StateName ORDER BY TotalCases DESC) AS Rank
    FROM DiseaseTotals
)
WHERE Rank = 1
ORDER BY StateName;
