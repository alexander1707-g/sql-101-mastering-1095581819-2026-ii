-- T1: geo.municipalities 

SELECT 
  T1.municipality_name AS municipality,
  LENGTH(T1.municipality_name) AS name_length
FROM geo.municipalities T1 
WHERE T1.department_code = '54'
ORDER BY LENGTH(T1.municipality_name) DESC, T1.municipality_name
LIMIT 1;



/**

   municipality    | name_length
-------------------+-------------
 Villa Del Rosario |          17
(1 fila)

**/