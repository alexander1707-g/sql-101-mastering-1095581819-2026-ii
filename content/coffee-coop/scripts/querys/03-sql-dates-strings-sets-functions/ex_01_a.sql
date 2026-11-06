-- T1: farm.farmers
-- T2. geo.municipalities
-- INNER JOIN T1.municipality_code = T2.municipality_code

SELECT 
  T1.document_number AS document, 
  T1.first_name AS first_name,
  T1.last_name AS last_name,
  T1.membership_date AS membership_date,
  (CURRENT_DATE - T1.membership_date) AS membership_days
FROM farm.farmers T1 
INNER JOIN geo.municipalities T2 ON T1.municipality_code = T2.municipality_code
WHERE T2.municipality_code = '54518' 
ORDER BY membership_days DESC;


/**

  document  |    first_name     |     last_name      | membership_date | membership_days
------------+-------------------+--------------------+-----------------+-----------------
 402745033  | JuliÃ¡n Guillermo  | Valencia NarvÃ¡ez   | 1995-01-27      |           11605
 361839624  | RocÃ­o Alba        | Ortega Serrano     | 1995-07-10      |           11441
 546579335  | Wilson            | Parra Prada        | 1995-07-28      |           11423
 939635303  | Marleny           | Ãlvarez Correa     | 1996-03-20      |           11187
 748380481  | Teresa Adriana    | Valencia Moreno    | 1996-07-23      |           11062
 1012324420 | Martha Carolina   | PÃ©rez Jaimes       | 1996-11-22      |           10940
 230971064  | Manuel            | Agudelo JimÃ©nez    | 1997-03-29      |           10813
 483692716  | Ramiro            | Barrera Villamizar | 1997-04-08      |           10803
 677772599  | Guillermo         | PÃ©rez PÃ©rez        | 1997-05-17      |           10764
 59388780   | Juan              | Ortega Zapata      | 1997-07-13      |           10707
 789425487  | EfraÃ­n Ricardo    | Contreras Ospina   | 1997-07-21      |           10699
 172555225  | Edilma Gabriela   | Arias Ãlvarez      | 1998-03-24      |           10453
 659942505  | Mariana           | Barrera Correa     | 1998-03-27      |           10450
 914235490  | Ã“scar             | Ospina GonzÃ¡lez    | 1998-05-02      |           10414
 963176673  | Luis              | Mosquera Perdomo   | 1998-07-29      |           10326
 142439635  | Yeison            | Medina LondoÃ±o     | 1998-09-29      |           10264
 534023693  | Myriam            | Valencia Moreno    | 1998-11-03      |           10229
 446019320  | Fernando          | Rojas CÃ¡rdenas     | 1998-12-16      |           10186

**/