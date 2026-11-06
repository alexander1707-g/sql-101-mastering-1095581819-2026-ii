-- T1: farm.farm
-- T2: farm.farm_certification
-- T3: farm.certifications

-- INNER JOIN T1.farm_id = T2.farm_id 
-- INNER JOIN T2.certification_id = T3.certification_id

SELECT 
  T1.farm_name AS farm,
  T3.certification_name AS certification,
  T2.start_date AS start_date,
  T2.end_date AS end_date,
  (T2.end_date - T2.start_date) AS duration_days,
  AGE(T2.end_date, T2.start_date) AS duration
FROM farm.farms T1 
INNER JOIN farm.farm_certifications T2 ON T1.farm_id = T2.farm_id
INNER JOIN farm.certifications T3 ON T2.certification_id = T3.certification_id
WHERE T2.end_date IS NOT NULL
ORDER BY duration DESC 
LIMIT 10;


/**

     farm      |    certification    | start_date |  end_date  | duration_days | duration
---------------+---------------------+------------+------------+---------------+----------
 Las OrquÃ­deas | 4C                  | 2017-06-21 | 2020-06-21 |          1096 | 3 years
 La Esperanza  | 4C                  | 2022-10-07 | 2025-10-07 |          1096 | 3 years
 El Placer     | Rainforest Alliance | 2022-01-08 | 2025-01-08 |          1096 | 3 years
 La Gaitana    | C.A.F.E. Practices  | 2015-03-31 | 2018-03-31 |          1096 | 3 years
 La Estrella   | Rainforest Alliance | 2023-04-12 | 2026-04-12 |          1096 | 3 years
 La Estrella   | Rainforest Alliance | 2020-03-24 | 2023-03-24 |          1095 | 3 years
 Los Arrayanes | Rainforest Alliance | 2022-10-02 | 2025-10-02 |          1096 | 3 years
 El Rosal      | Fairtrade           | 2023-07-17 | 2026-07-17 |          1096 | 3 years
 El Rosal      | Fairtrade           | 2020-07-12 | 2023-07-12 |          1095 | 3 years
 Las OrquÃ­deas | OrgÃ¡nico            | 2020-01-03 | 2023-01-03 |          1096 | 3 years
(10 filas)

**/