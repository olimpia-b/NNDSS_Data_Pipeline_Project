-- Check Disease table for NULL values
SELECT *
FROM `ba-882-group3.NNDSS_Dataset.Disease`
WHERE disease_id IS NULL
   OR disease_name IS NULL;

-- Check Location table for NULL values
SELECT *
FROM `ba-882-group3.NNDSS_Dataset.Location`
WHERE location_id IS NULL
   OR location_name IS NULL
   OR states IS NULL
   OR location2 IS NULL
   OR longitude IS NULL
   OR latitude IS NULL;

-- Check Report table for NULL values
SELECT *
FROM `ba-882-group3.NNDSS_Dataset.Report`
WHERE report_id IS NULL
   OR mmwr_year IS NULL
   OR mmwr_week IS NULL
   OR states IS NULL
   OR label IS NULL;

-- Check Weekly_Data table for NULL values
SELECT *
FROM `ba-882-group3.NNDSS_Dataset.Weekly_Data`
WHERE data_id IS NULL
   OR location_id IS NULL
   OR report_id IS NULL
   OR disease_id IS NULL
   OR current_week IS NULL
   OR current_week_flag IS NULL
   OR previous_52_week_max IS NULL
   OR previous_52_week_max_flag IS NULL
   OR cumulative_ytd IS NULL
   OR cumulative_ytd_flag IS NULL
   OR cumulative_ytd_previous IS NULL
   OR cumulative_ytd_previous_flag IS NULL;
