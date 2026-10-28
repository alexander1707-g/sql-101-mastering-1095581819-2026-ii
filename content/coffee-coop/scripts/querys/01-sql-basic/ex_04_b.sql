SELECT 
    T1.municipality_code AS municipality_code,
    T1.municipality_name AS municipality 
FROM geo.municipalities T1 
    WHERE department_code = '54'
    AND T1.municipality_name LIKE 'San%';


/**

 municipality_code | municipality
-------------------+--------------
 54670             | San Calixto
 54673             | San Cayetano
 54680             | Santiago
(3 filas)

**/