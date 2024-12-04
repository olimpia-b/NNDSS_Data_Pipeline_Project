##Total Cases Per Year by State

SELECT mmwr_year, states, COUNT(*) AS total_cases
FROM `ba-882-group3.NNDSS_Dataset.Report`
WHERE mmwr_year BETWEEN 2022 AND 2024 AND states != 'TOTAL'
GROUP BY mmwr_year, states
ORDER BY mmwr_year, total_cases DESC;
