CREATE OR REPLACE FUNCTION farm.fn_short_name(p_first_name VARCHAR, p_last_name VARCHAR)
RETURNS VARCHAR 
LANGUAGE plpgsql

AS $$
  
  BEGIN 
    RETURN CONCAT(UPPER(SUBSTRING(p_first_name FROM 1 FOR 1)), '. ', p_last_name);
  END;

$$;


SELECT 
  farm.fn_short_name(T1.first_name, T1.last_name) AS short_name,
  T1.phone_number AS phone
FROM farm.farmers T1 
WHERE T1.gender = 'M' AND T1.municipality_code = '54518'
ORDER BY T1.last_name, T1.first_name
LIMIT 10;


/**

      short_name       |   phone
-----------------------+------------
 M. Agudelo Jiménez    | 3219718862
 A. Álvarez Villamizar | 3025342853
 A. Arango Silva       | 3053453318
 C. Arias Mora         | 3045535545
 G. Arias Rodríguez    | 3131845672
 R. Barrera Villamizar | 3056539829
 A. Bastidas Rodríguez | 3145736315
 A. Bastidas Rodríguez | 3508682050
 N. Bedoya Vélez       | 3194564518
 I. Bermúdez Flórez    | 3139698870
(10 filas)

**/