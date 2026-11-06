
-- T1: buy.deliveries



SELECT 
  EXTRACT(WEEK FROM T1.delivered_at) AS week_number,
  COUNT(T1.delivery_id) AS deliveries_count,
  MIN(EXTRACT(DOY FROM T1.delivered_at)) AS first_day_of_year,
  MAX(EXTRACT(DOY FROM T1.delivered_at)) AS last_day_of_year
FROM buy.deliveries T1
WHERE EXTRACT(YEAR FROM T1.delivered_at) = 2026 
      AND
      EXTRACT(WEEK FROM T1.delivered_at) BETWEEN 36 AND 40
GROUP BY EXTRACT(WEEK FROM T1.delivered_at);


/**

 week_number | deliveries_count | first_day_of_year | last_day_of_year
-------------+------------------+-------------------+------------------
          36 |             2146 |               243 |              249
          37 |             2151 |               250 |              256
          38 |             2099 |               257 |              263
          39 |             2104 |               264 |              270
          40 |              928 |               271 |              273
(5 filas)

**/