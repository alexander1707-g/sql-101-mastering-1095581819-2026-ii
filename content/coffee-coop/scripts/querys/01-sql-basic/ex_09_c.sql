SELECT 
  T1.analysis_id AS analysis,
  T1.delivery_id AS delivery,
  T1.moisture_pct AS moisture_pct,
  T1.yield_factor AS yield_factor,
  T1.cup_score AS cup_score,
  T1.analyst_name,
  T1.observations
FROM buy.quality_analyses T1
  WHERE T1.is_accepted = FALSE
  AND T1.observations IS NOT NULL
  AND (
    T1.analyzed_at >= '2026-09-30 00:00:00' AND T1.analyzed_at < '2026-10-01 00:00:00'
  )
ORDER BY T1.defects_pct DESC;


/**

      analysis      |      delivery       | moisture_pct | yield_factor | cup_score |    analyst_name    |                observations
--------------------+---------------------+--------------+--------------+-----------+--------------------+---------------------------------------------
 QA-20260930-000104 | DLV-20260930-000214 |        17.68 |        97.46 |     82.59 | Carolina RodrÃ­guez | Olor a fermento en la muestra.
 QA-20260930-000068 | DLV-20260930-000165 |        16.13 |       100.22 |           | GermÃ¡n PeÃ±a        | Muestra tomada por duplicado.
 QA-20260930-000119 | DLV-20260930-000253 |         8.39 |       106.52 |     84.33 | AnÃ­bal PabÃ³n       | Exceso de impurezas y pasilla.
 QA-20260930-000086 | DLV-20260930-000147 |        15.20 |        96.57 |           | Erika Restrepo     | Olor a fermento en la muestra.
 QA-20260930-000113 | DLV-20260930-000223 |         9.57 |        99.70 |     85.05 | Reinaldo BermÃºdez  | CafÃ© sobresecado, grano quebradizo.
 QA-20260930-000022 | DLV-20260930-000070 |        12.95 |       103.55 |           | Santiago Rojas     | CafÃ© con humedad alta, requiere mÃ¡s secado.
 QA-20260930-000018 | DLV-20260930-000006 |        17.24 |       103.31 |     79.98 | NicolÃ¡s Serrano    | CafÃ© con humedad alta, requiere mÃ¡s secado.
(7 filas)

**/