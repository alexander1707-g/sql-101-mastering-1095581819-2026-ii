SELECT 
  T1.delivery_id AS delivery,
  T1.farm_id AS farm_id,
  T1.collection_point_id AS collection_point_id,
  T1.delivered_at AS received_at,
  T1.coffee_type AS coffee_type,
  T1.gross_weight_kg AS gross_weight_kg,
  (T1.gross_weight_kg / T1.bag_count) AS avg_kg_per_bag
FROM buy.deliveries T1
  WHERE T1.delivery_id LIKE '%20260928%' AND T1.status = 'rejected' 
ORDER BY T1.delivered_at;


/**

      delivery       | farm_id | collection_point_id |     received_at     |  coffee_type  | gross_weight_kg |   avg_kg_per_bag
---------------------+---------+---------------------+---------------------+---------------+-----------------+---------------------
 DLV-20260928-000045 |  128602 |                  61 | 2026-09-28 07:52:44 | dry_parchment |          177.17 | 59.0566666666666667
 DLV-20260928-000069 |  226738 |                  87 | 2026-09-28 08:36:22 | wet_parchment |          211.94 | 52.9850000000000000
 DLV-20260928-000082 |  229693 |                  63 | 2026-09-28 09:02:06 | dry_parchment |           47.75 | 47.7500000000000000
 DLV-20260928-000102 |    2440 |                 120 | 2026-09-28 09:44:48 | wet_parchment |          396.15 | 66.0250000000000000
 DLV-20260928-000179 |   72038 |                  84 | 2026-09-28 12:24:02 | dry_parchment |          248.04 | 62.0100000000000000
 DLV-20260928-000229 |   71226 |                 120 | 2026-09-28 14:02:07 | dry_parchment |          217.63 | 54.4075000000000000
 DLV-20260928-000238 |  213451 |                  80 | 2026-09-28 14:19:25 | dry_parchment |          229.41 | 38.2350000000000000
 DLV-20260928-000239 |   89177 |                  24 | 2026-09-28 14:25:07 | dry_parchment |          175.73 | 43.9325000000000000
 DLV-20260928-000261 |  202207 |                 178 | 2026-09-28 15:00:34 | dry_parchment |          165.35 | 55.1166666666666667
 DLV-20260928-000288 |  227905 |                  21 | 2026-09-28 16:07:15 | dry_parchment |          457.77 | 57.2212500000000000
 DLV-20260928-000290 |   45408 |                 118 | 2026-09-28 16:07:43 | dry_parchment |          164.64 | 54.8800000000000000
(11 filas)

**/