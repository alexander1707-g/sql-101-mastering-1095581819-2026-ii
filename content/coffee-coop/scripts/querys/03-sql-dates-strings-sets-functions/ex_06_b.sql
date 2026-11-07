-- T1: buy.collection_points
-- T2: geo.municipalities 
-- T3: geo.departments

SELECT 
  CONCAT(T1.point_name, ' recibe cafe en ', T2.municipality_name) AS description
FROM buy.collection_points T1 
INNER JOIN geo.municipalities T2 ON T1.municipality_code = T2.municipality_code
INNER JOIN geo.departments T3 ON T2.department_code = T3.department_code
WHERE T3.department_code = '54'
ORDER BY T1.point_name;


/**

                      description
--------------------------------------------------------
 Punto de Compra Bochalema 1 recibe cafe en Bochalema
 Punto de Compra Chinácota 1 recibe cafe en Chinácota
 Punto de Compra Convención 1 recibe cafe en Convención
 Punto de Compra El Carmen 1 recibe cafe en El Carmen
 Punto de Compra El Carmen 2 recibe cafe en El Carmen
 Punto de Compra El Zulia 1 recibe cafe en El Zulia
 Punto de Compra Herrán 1 recibe cafe en Herrán
 Punto de Compra Herrán 2 recibe cafe en Herrán
 Punto de Compra Ocaña 1 recibe cafe en Ocaña
 Punto de Compra Sardinata 1 recibe cafe en Sardinata
(10 filas)


**/