-- T1: farm.farmers


SELECT 
  T1.gender AS gender,
  COUNT(T1.farmer_id) AS farmers_count,
  ROUND(AVG(DATE_PART('year', AGE('2026-09-30', T1.birth_date)))::NUMERIC, 2) AS avg_age_years
FROM farm.farmers T1 
GROUP BY T1.gender;


/**

 gender | farmers_count | avg_age_years
--------+---------------+---------------
 F      |         63932 |         50.71
 M      |         83036 |         50.74
 O      |          3032 |         50.34
(3 filas)

**/