-- T1: farm.farmers
-- T2. geo.municipalities
-- INNER JOIN T1.municipality_code = T2.municipality_code

SELECT 
  T1.document_number AS document, 
  T1.first_name AS first_name,
  T1.last_name AS last_name,
  T1.membership_date AS membership_date,
  AGE('2026-09-30', T1.membership_date) AS membership_age,
  DATE_PART('year', AGE('2026-09-30', T1.membership_date)) AS membership_years
FROM farm.farmers T1 
INNER JOIN geo.municipalities T2 ON T1.municipality_code = T2.municipality_code
WHERE T2.municipality_code = '54518' 
ORDER BY membership_age DESC
LIMIT 10;

/**
  document  |    first_name    |     last_name      | membership_date |     membership_age      | membership_years
------------+------------------+--------------------+-----------------+-------------------------+------------------
 402745033  | JuliÃ¡n Guillermo | Valencia NarvÃ¡ez   | 1995-01-27      | 31 years 8 mons 3 days  |               31
 361839624  | RocÃ­o Alba       | Ortega Serrano     | 1995-07-10      | 31 years 2 mons 20 days |               31
 546579335  | Wilson           | Parra Prada        | 1995-07-28      | 31 years 2 mons 2 days  |               31
 939635303  | Marleny          | Ãlvarez Correa     | 1996-03-20      | 30 years 6 mons 10 days |               30
 748380481  | Teresa Adriana   | Valencia Moreno    | 1996-07-23      | 30 years 2 mons 7 days  |               30
 1012324420 | Martha Carolina  | PÃ©rez Jaimes       | 1996-11-22      | 29 years 10 mons 8 days |               29
 230971064  | Manuel           | Agudelo JimÃ©nez    | 1997-03-29      | 29 years 6 mons 1 day   |               29
 483692716  | Ramiro           | Barrera Villamizar | 1997-04-08      | 29 years 5 mons 22 days |               29
 677772599  | Guillermo        | PÃ©rez PÃ©rez        | 1997-05-17      | 29 years 4 mons 13 days |               29
 59388780   | Juan             | Ortega Zapata      | 1997-07-13      | 29 years 2 mons 17 days |               29
(10 filas)
**/