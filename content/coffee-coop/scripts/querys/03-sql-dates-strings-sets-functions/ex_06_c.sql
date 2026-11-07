-- T1: buy.collection_points
-- T2: buy.deliveries

SELECT 

    T2.delivery_id AS delivery,
    SPLIT_PART(T2.delivery_id, '-', 1) AS prefix,
    SPLIT_PART(T2.delivery_id, '-', 2) AS date_code,
    SPLIT_PART(T2.delivery_id, '-', 3) AS sequence_code,
    T2.delivered_at AS delivered_at
  
FROM buy.collection_points T1 
INNER JOIN buy.deliveries T2 ON T1.collection_point_id = T2.collection_point_id
WHERE T1.collection_point_id = '163' AND T2.delivered_at::DATE = '2026-09-30'
ORDER BY T1.point_name;


/**

      delivery       | prefix | date_code | sequence_code |    delivered_at
---------------------+--------+-----------+---------------+---------------------
 DLV-20260930-000063 | DLV    | 20260930  | 000063        | 2026-09-30 08:04:43
 DLV-20260930-000077 | DLV    | 20260930  | 000077        | 2026-09-30 08:53:06
 DLV-20260930-000141 | DLV    | 20260930  | 000141        | 2026-09-30 11:11:53
 DLV-20260930-000233 | DLV    | 20260930  | 000233        | 2026-09-30 14:36:39
(4 filas)

**/