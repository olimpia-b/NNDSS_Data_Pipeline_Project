##Comparison of Current YTD to Previous YTD
##Compare the current year-to-date totals with the previous year's YTD to see where significant changes have occurred:

SELECT location_id, disease_id, 
       SUM(cumulative_ytd) AS current_ytd,
       SUM(cumulative_ytd_previous) AS previous_ytd,
       SUM(cumulative_ytd) - SUM(cumulative_ytd_previous) AS ytd_difference
FROM `ba-882-group3.NNDSS_Dataset.Weekly_Data`
GROUP BY location_id, disease_id
ORDER BY ytd_difference DESC;
