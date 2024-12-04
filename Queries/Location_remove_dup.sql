CREATE OR REPLACE TABLE `ba-882-group3.NNDSS_Dataset.Location` AS
WITH deduplicated_data AS (
  SELECT
    location_id,
    location_name,
    states,
    location2,
    longitude,
    latitude,
    ROW_NUMBER() OVER (
      PARTITION BY location_name, states, location2, CAST(longitude AS STRING), CAST(latitude AS STRING)
      ORDER BY location_id
    ) AS row_num
  FROM
    `ba-882-group3.NNDSS_Dataset.Location`
)
SELECT
  location_id,
  location_name,
  states,
  location2,
  longitude,
  latitude
FROM
  deduplicated_data
WHERE
  row_num = 1;
