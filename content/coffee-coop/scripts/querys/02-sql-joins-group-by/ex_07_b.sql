SELECT 
  MIN(T1.cup_score) AS min_cupscore,
  MAX(T1.cup_score) AS max_cup_score,
  AVG(T1.cup_score) AS avg_cup_score,
  MIN(T1.moisture_pct) AS min_moisture_pct,
  MAX(T1.moisture_pct) AS max_moisture_pct
FROM buy.quality_analyses T1
WHERE T1.analysis_id LIKE '%20260930%';


/**

 min_cupscore | max_cup_score |    avg_cup_score    | min_moisture_pct | max_moisture_pct
--------------+---------------+---------------------+------------------+------------------
        77.17 |         87.28 | 82.9051785714285714 |             8.39 |            17.68
(1 fila)

**/