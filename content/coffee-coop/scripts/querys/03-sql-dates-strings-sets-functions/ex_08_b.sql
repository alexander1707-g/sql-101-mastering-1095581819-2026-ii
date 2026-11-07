SELECT 
  T1.municipality_code AS code,
  T1.municipality_name AS municipality
FROM geo.municipalities T1 
INNER JOIN geo.departments T2 ON T1.department_code = T2.department_code
INNER JOIN farm.farms T3 ON T1.municipality_code = T3.municipality_code
WHERE T2.department_code = '54'

EXCEPT

SELECT 
  T4.municipality_code AS code,
  T4.municipality_name AS municipality
FROM geo.municipalities T4 
INNER JOIN geo.departments T5 ON T4.department_code = T5.department_code
INNER JOIN buy.collection_points T6 ON T4.municipality_code = T6.municipality_code
WHERE T5.department_code = '54'

ORDER BY municipality;


/**

 code  |   municipality
-------+-------------------
 54003 | Ábrego
 54051 | Arboledas
 54109 | Bucarasica
 54128 | Cáchira
 54125 | Cácota
 54174 | Chitagá
 54001 | Cúcuta
 54223 | Cucutilla
 54239 | Durania
 54250 | El Tarra
 54313 | Gramalote
 54344 | Hacarí
 54385 | La Esperanza
 54398 | La Playa
 54377 | Labateca

**/