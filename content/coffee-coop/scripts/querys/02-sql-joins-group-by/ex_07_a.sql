SELECT 
  COUNT(T1.delivery_id) AS total_deliveries,
  SUM(T1.gross_weight_kg) AS total_gross_kg,
  ROUND(AVG(T1.gross_weight_kg), 2) AS avg_gross_kg,
  COUNT(DISTINCT T1.farm_id) AS farms_delivering
FROM buy.deliveries T1
WHERE T1.delivery_id LIKE '%20260930%';


/**

 total deliveries | total gross kg | avg gross kg | farms delivering
------------------+----------------+--------------+------------------
              300 |       52190.96 |       173.97 |              300
(1 fila)


**/