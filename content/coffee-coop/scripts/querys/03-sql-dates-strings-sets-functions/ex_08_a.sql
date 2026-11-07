SELECT 
  T1.municipality_code AS code,
  T1.municipality_name AS municipality
FROM geo.municipalities T1 
INNER JOIN geo.departments T2 ON T1.department_code = T2.department_code
INNER JOIN farm.farms T3 ON T1.municipality_code = T3.municipality_code
WHERE T2.department_code = '54'

INTERSECT 

SELECT 
  T4.municipality_code AS code,
  T4.municipality_name AS municipality
FROM geo.municipalities T4 
INNER JOIN geo.departments T5 ON T4.department_code = T5.department_code
INNER JOIN buy.collection_points T6 ON T4.municipality_code = T6.municipality_code
WHERE T5.department_code = '54'

ORDER BY municipality;


/**

 code  | municipality
-------+--------------
 54099 | Bochalema
 54172 | Chinácota
 54206 | Convención
 54245 | El Carmen
 54261 | El Zulia
 54347 | Herrán
 54498 | Ocaña
 54720 | Sardinata
(8 filas)

**/