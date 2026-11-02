SELECT 
  T2.variety_name AS variety,
  T2.species AS species
FROM farm.plot_varieties T1
RIGHT JOIN farm.coffee_varieties T2 
  ON T1.variety_id = T2.variety_id
WHERE T1.plot_variety_id IS NULL;


/**

 variety | species
---------+---------
(0 filas)

**/