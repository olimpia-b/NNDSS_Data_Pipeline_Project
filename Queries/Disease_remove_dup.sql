WITH RankedData AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY disease_id ORDER BY disease_id) AS row_num
    FROM `ba-882-group3.NNDSS_Dataset.Disease`
)
-- Select only the rows where row_num = 1 (i.e., keep one copy of each duplicate)
SELECT * EXCEPT(row_num)
FROM RankedData
WHERE row_num = 1;

CREATE OR REPLACE TABLE `ba-882-group3.NNDSS_Dataset.Disease` AS
WITH RankedData AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY disease_id ORDER BY disease_id) AS row_num
    FROM `ba-882-group3.NNDSS_Dataset.Disease`
)
-- Select only the rows where row_num = 1 (i.e., keep one copy of each duplicate)
SELECT * EXCEPT(row_num)
FROM RankedData
WHERE row_num = 1