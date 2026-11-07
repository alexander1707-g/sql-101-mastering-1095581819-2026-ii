-- T1: geo.municipalities


SELECT 
  T1.municipality_code AS municipality_code
FROM geo.municipalities T1 
INNER JOIN farm.farmers T2 ON T1.municipality_code = T2.municipality_code
WHERE T1.department_code = '54'
  
UNION 

SELECT 
  T4.municipality_code AS municipality_code
FROM farm.farms T3 
INNER JOIN geo.municipalities T4 ON T3.municipality_code = T4.municipality_code
ORDER BY municipality_code
LIMIT 15;

/**

 municipality_code
-------------------
 05001
 05002
 05004
 05021
 05030
 05031
 05034
 05036
 05038
 05040
 05042
 05044
 05045
 05051
 05055
(15 filas)

**/



SELECT 
  T1.municipality_code AS municipality_code
FROM geo.municipalities T1 
INNER JOIN farm.farmers T2 ON T1.municipality_code = T2.municipality_code
WHERE T1.department_code = '54'
  
UNION ALL

SELECT 
  T4.municipality_code AS municipality_code
FROM farm.farms T3 
INNER JOIN geo.municipalities T4 ON T3.municipality_code = T4.municipality_code
ORDER BY municipality_code
LIMIT 15;


/**

 municipality_code
-------------------
 05001
 05001
 05001
 05001
 05001
 05001
 05001
 05001
 05001
 05001
 05001
 05001
 05001
 05001
 05001
(15 filas)

**/