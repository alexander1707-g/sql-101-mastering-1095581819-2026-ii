-- T1: farm.farmers
-- T2: geo.municipalities
-- T3: geo.departments

-- INNER JOIN T1.municipality_code = T2.municipality_code
-- INNER JOIN T2.department_code = T3.department_code
SELECT 
  T2.municipality_name AS municipality,
  COUNT(T1.farmer_id) AS farmers_count,
  ROUND(AVG(DATE_PART('year', AGE(CURRENT_DATE, T1.birth_date))::NUMERIC), 2) AS avg_age_years
FROM farm.farmers T1 
INNER JOIN geo.municipalities T2 ON T1.municipality_code = T2.municipality_code
INNER JOIN geo.departments T3 ON T2.department_code = T3.department_code
WHERE T3.department_code = '54'
GROUP BY T2.municipality_name
HAVING ROUND(AVG(DATE_PART('year', AGE(CURRENT_DATE, T1.birth_date))::NUMERIC), 2) >= 51
ORDER BY T2.municipality_name;


/**

   municipality   | farmers_count | avg_age_years
------------------+---------------+---------------
 Arboledas        |           235 |         51.59
 Bochalema        |           224 |         51.68
 Bucarasica       |           188 |         51.61
 CÃ¡chira         |           206 |        51.81
 CÃ¡cota          |           222 |        51.85
 ChitagÃ¡         |           209 |        51.29
 El Carmen        |           218 |         52.67
 HerrÃ¡n          |           213 |        51.01
 La Esperanza     |           199 |         51.35
 Mutiscua         |           216 |         51.97
 Puerto Santander |           194 |         51.89
 Ragonvalia       |           244 |         51.25
 Sardinata        |           197 |         51.25
 Silos            |           206 |         52.17
(14 filas)

**/