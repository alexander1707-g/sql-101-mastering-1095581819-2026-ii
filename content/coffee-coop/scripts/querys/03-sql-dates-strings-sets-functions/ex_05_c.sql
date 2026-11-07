-- T1: geo.departments 

SELECT 
  T1.department_code AS code,
  T1.department_name AS department
FROM geo.departments T1 
WHERE UPPER(T1.department_name) = UPPER('Norte de Santander');


/**

 code |     department
------+--------------------
 54   | Norte De Santander
(1 fila)

**/
