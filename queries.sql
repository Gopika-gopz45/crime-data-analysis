SELECT district, SUM(cases_reported) AS total_cases
FROM crime_data
GROUP BY district
ORDER BY total_cases DESC;

SELECT year, SUM(cases_reported) AS total
FROM crime_data
GROUP BY year
ORDER BY year;

SELECT crime_type, SUM(cases_reported) AS total
FROM crime_data
GROUP BY crime_type
ORDER BY total DESC;

SELECT 
    district,
    AVG(crime_rate) AS avg_rate,
    CASE 
        WHEN AVG(crime_rate) > 50 THEN 'High Risk'
        WHEN AVG(crime_rate) > 20 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS risk_level
FROM crime_data
GROUP BY district
ORDER BY avg_rate DESC;
