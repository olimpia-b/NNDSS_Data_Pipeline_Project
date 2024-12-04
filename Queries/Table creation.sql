CREATE TABLE IF NOT EXISTS `ba-882-group3.NNDSS_Dataset.Disease` (
  disease_id INT64 NOT NULL,
  disease_name STRING,
  -- PRIMARY KEY(disease_id)
);

CREATE TABLE IF NOT EXISTS `ba-882-group3.NNDSS_Dataset.Location` (
  location_id INT64 NOT NULL,
  location_name STRING,
  states STRING,
  location2 STRING,
  longitude FLOAT64,  -- Longitude as a FLOAT64 field
  latitude FLOAT64,   -- Latitude as a FLOAT64 field
  PRIMARY KEY (location_id) NOT ENFORCED
);


ALTER TABLE `ba-882-group3.NNDSS_Dataset.Location` ADD PRIMARY KEY (location_id) NOT ENFORCED;

CREATE TABLE IF NOT EXISTS `ba-882-group3.NNDSS_Dataset.Report` (
  report_id INT64 NOT NULL,
  mmwr_year INT64,
  mmwr_week INT64,
  -- PRIMARY KEY(report_id)
);

ALTER TABLE `ba-882-group3.NNDSS_Dataset.Report` ADD PRIMARY KEY (report_id) NOT ENFORCED;

CREATE TABLE `ba-882-group3.NNDSS_Dataset.Weekly_Data`(
    data_id INT PRIMARY KEY,
    location_id INT,
    report_id INT,
    disease_id INT,
    current_week INT,
    current_week_flag CHAR(1),
    previous_52_week_max INT,
    previous_52_week_max_flag CHAR(1),
    cumulative_ytd INT,
    cumulative_ytd_flag CHAR(1),
    cumulative_ytd_previous INT,
    cumulative_ytd_previous_flag CHAR(1),
    -- FOREIGN KEY (location_id) REFERENCES Location(location_id),
    -- FOREIGN KEY (report_id) REFERENCES Report(report_id),
    -- FOREIGN KEY (disease_id) REFERENCES Disease(disease_id),
    -- -- UNIQUE (location_id, report_id, disease_id)
);

-- Add primary key constraint
ALTER TABLE `ba-882-group3.NNDSS_Dataset.Weekly_Data`
ADD PRIMARY KEY (data_id) NOT ENFORCED;

-- Add foreign key constraints
ALTER TABLE `ba-882-group3.NNDSS_Dataset.Weekly_Data`
ADD CONSTRAINT fk_location
FOREIGN KEY (location_id) REFERENCES `ba-882-group3.NNDSS_Dataset.Location` (location_id) NOT ENFORCED;

ALTER TABLE `ba-882-group3.NNDSS_Dataset.Weekly_Data`
ADD CONSTRAINT fk_report
FOREIGN KEY (report_id) REFERENCES `ba-882-group3.NNDSS_Dataset.Report` (report_id) NOT ENFORCED;

ALTER TABLE `ba-882-group3.NNDSS_Dataset.Weekly_Data`
ADD CONSTRAINT fk_disease
FOREIGN KEY (disease_id) REFERENCES `ba-882-group3.NNDSS_Dataset.Disease` (disease_id) NOT ENFORCED;