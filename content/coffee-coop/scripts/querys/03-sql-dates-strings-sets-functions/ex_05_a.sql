-- T1: farm.coffee_varieties

SELECT 
  UPPER(T1.variety_name) AS variety_upper,
  LOWER(T1.species) AS species, 
  LENGTH(T1.variety_name) AS name_length
FROM farm.coffee_varieties T1
ORDER BY name_length DESC, variety_upper;

/**

 variety_upper | species | name_length
---------------+---------+-------------
 BORBÃ“N ROSADO | arabica |          13
 CENICAFÃ‰ 1    | arabica |          10
 MARAGOGIPE    | arabica |          10
 CASTILLO      | arabica |           8
 COLOMBIA      | arabica |           8
 PACAMARA      | arabica |           8
 CATURRA       | arabica |           7
 ROBUSTA       | robusta |           7
 BORBÃ“N        | arabica |           6
 GEISHA        | arabica |           6
 TÃPICA        | arabica |           6
 TABI          | arabica |           4
(12 filas)

**/