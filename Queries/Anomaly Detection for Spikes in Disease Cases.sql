WITH Weekly_Avg AS (
    SELECT 
        disease_id,
        location_id,
        AVG(current_week) AS AvgCases,
        STDDEV(current_week) AS StdDevCases
    FROM 
        `ba-882-group3.NNDSS_Dataset.Weekly_Data`
    GROUP BY 
        disease_id, location_id
),
Anomalies AS (
    SELECT 
        w.disease_id,
        w.location_id,
        w.current_week_flag,
        w.current_week,
        wa.AvgCases,
        wa.StdDevCases
    FROM 
        `ba-882-group3.NNDSS_Dataset.Weekly_Data` w
    JOIN 
        Weekly_Avg wa
    ON 
        w.disease_id = wa.disease_id AND w.location_id = wa.location_id
    WHERE 
        w.current_week > (wa.AvgCases + 2 * wa.StdDevCases) -- Detects cases 2 standard deviations above average
)
SELECT 
    *
FROM 
    Anomalies
ORDER BY 
    current_week_flag DESC;
