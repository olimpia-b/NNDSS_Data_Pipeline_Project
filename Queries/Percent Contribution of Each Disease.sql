WITH DiseaseTotals AS (
    SELECT 
        disease_id,
        SUM(current_week) AS TotalCases
    FROM 
        `ba-882-group3.NNDSS_Dataset.Weekly_Data`
    GROUP BY 
        disease_id
)
SELECT 
    disease_id,
    TotalCases,
    ROUND((TotalCases / (SELECT SUM(TotalCases) FROM DiseaseTotals)) * 100, 2) AS PercentContribution
FROM 
    DiseaseTotals
ORDER BY 
    PercentContribution DESC;
