-- T1: buy.deliveries
-- T2: buy.quality_analyses 

-- INNER JOIN T1.delivery_id = T2.delivery_id

SELECT 
  T1.delivery_id AS delivery,
  T1.delivered_at AS delivered_at,
  T2.analyzed_at AS analyzed_at,
  ROUND(EXTRACT(EPOCH FROM (T2.analyzed_at - T1.delivered_at) / 3600), 2) AS hours_to_analysis
FROM buy.deliveries T1
INNER JOIN buy.quality_analyses T2 ON T1.delivery_id = T2.delivery_id
WHERE EXTRACT(YEAR FROM T1.delivered_at) = 2026
      AND EXTRACT(MONTH FROM T1.delivered_at) = 9
ORDER BY ROUND(EXTRACT(EPOCH FROM (T2.analyzed_at - T1.delivered_at) / 3600), 2) DESC
LIMIT 10;


/**

      delivery       |    delivered_at     |     analyzed_at     | hours_to_analysis
---------------------+---------------------+---------------------+-------------------
 DLV-20260912-000056 | 2026-09-12 08:04:45 | 2026-09-12 13:04:32 |              5.00
 DLV-20260917-000018 | 2026-09-17 06:33:28 | 2026-09-17 11:33:19 |              5.00
 DLV-20260907-000282 | 2026-09-07 16:07:13 | 2026-09-07 21:07:11 |              5.00
 DLV-20260909-000224 | 2026-09-09 13:57:05 | 2026-09-09 18:56:58 |              5.00
 DLV-20260914-000104 | 2026-09-14 09:37:54 | 2026-09-14 14:37:43 |              5.00
 DLV-20260915-000146 | 2026-09-15 11:34:09 | 2026-09-15 16:33:53 |              5.00
 DLV-20260902-000048 | 2026-09-02 07:42:36 | 2026-09-02 12:42:25 |              5.00
 DLV-20260902-000240 | 2026-09-02 14:48:19 | 2026-09-02 19:48:08 |              5.00
 DLV-20260909-000115 | 2026-09-09 10:12:24 | 2026-09-09 15:12:12 |              5.00
 DLV-20260922-000135 | 2026-09-22 10:46:18 | 2026-09-22 15:46:12 |              5.00
(10 filas)

**/