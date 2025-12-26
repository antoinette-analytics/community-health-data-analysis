-- Aggregate patient counts by region and health center type
SELECT
    region,
    health_center_type,
    COUNT(*) AS center_count,
    SUM(total_patients) AS total_patients
FROM health_centers
GROUP BY region, health_center_type
ORDER BY region, total_patients DESC;
