SELECT 
  T1.department_name AS department,
  COUNT(T2.municipality_code) AS municipalities_count
FROM geo.departments T1
INNER JOIN geo.municipalities T2 ON T1.department_code = T2.department_code
GROUP BY T1.department_code, T1.department_name
HAVING COUNT(T2.municipality_code) > 40
ORDER BY municipalities_count DESC;

/**

   department    | municipalities_count
-----------------+----------------------
 Antioquia       |                  125
 BoyacÃ¡          |                  123
 Cundinamarca    |                  116
 Santander       |                   87
 NariÃ±o          |                   64
 Tolima          |                   47
 BolÃ­var         |                   46
 Cauca           |                   42
 Valle Del Cauca |                   42
(9 filas)

**/