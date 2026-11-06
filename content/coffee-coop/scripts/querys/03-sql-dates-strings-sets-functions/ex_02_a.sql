-- T1: farm.farmers
-- T2. geo.municipalities
-- INNER JOIN T1.municipality_code = T2.municipality_code

SELECT 
  T1.first_name AS first_name,
  T1.last_name AS last_name,
  T1.birth_date AS birth_date,
  DATE_PART('year', AGE('2026-09-30', T1.birth_date)) AS age_years
FROM farm.farmers T1 
INNER JOIN geo.municipalities T2 ON T1.municipality_code = T2.municipality_code
WHERE T2.municipality_code = '54518' 
ORDER BY age_years DESC
LIMIT 10;


/**

  first_name   |     last_name      | birth_date | age_years
---------------+--------------------+------------+-----------
 Adriana       | Mosquera Ospina    | 1950-08-13 |        76
 Felipe Camilo | RÃ­os Ospina        | 1950-03-09 |        76
 Elsa          | Ramos CÃ¡rdenas     | 1950-01-11 |        76
 Arturo        | Contreras PeÃ±a     | 1950-08-18 |        76
 Antonio       | Bastidas RodrÃ­guez | 1950-10-02 |        75
 Rosa          | RÃ­os CÃ¡rdenas      | 1951-08-26 |        75
 Gustavo       | Mosquera LÃ³pez     | 1951-06-05 |        75
 Diana         | DÃ­az Medina        | 1951-07-19 |        75
 Ã‰dgar         | Burbano Arango     | 1951-05-23 |        75
 InÃ©s LucÃ­a    | DÃ­az CuÃ©llar       | 1952-05-26 |        74
(10 filas)

**/