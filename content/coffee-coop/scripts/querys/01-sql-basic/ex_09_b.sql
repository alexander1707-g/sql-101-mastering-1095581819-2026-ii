
SELECT 
  T1.analysis_id AS analysis,
  T1.delivery_id AS delivery,
  T1.moisture_pct AS moisture_pct,
  T1.yield_factor AS yield_factor,
  T1.cup_score AS cup_score,
  T1.analyst_name,
  T1.observations
FROM buy.quality_analyses T1
  WHERE T1.moisture_pct NOT BETWEEN 10 AND 12 
  AND (
    T1.analyzed_at >= '2026-09-30 00:00:00' AND T1.analyzed_at < '2026-10-01 00:00:00'
  )
ORDER BY T1.cup_score DESC;


/**

      analysis      |      delivery       | moisture_pct | yield_factor | cup_score |    analyst_name    |                          observations            
--------------------+---------------------+--------------+--------------+-----------+--------------------+-----------------------------------------------------------------
 QA-20260930-000068 | DLV-20260930-000165 |        16.13 |       100.22 |           | GermÃ¡n PeÃ±a        | Muestra tomada por duplicado.
 QA-20260930-000144 | DLV-20260930-000289 |        12.28 |        87.62 |           | AncÃ­zar Delgado    |
 QA-20260930-000017 | DLV-20260930-000012 |        12.15 |        93.62 |           | Natalia Trujillo   |
 QA-20260930-000033 | DLV-20260930-000027 |        12.41 |        92.76 |           | Sara SÃ¡nchez       |
 QA-20260930-000149 | DLV-20260930-000286 |        12.28 |        94.58 |           | GermÃ¡n PeÃ±a        |
 QA-20260930-000109 | DLV-20260930-000272 |        12.18 |        95.93 |           | Jaime Ortega       |
 QA-20260930-000027 | DLV-20260930-000043 |        12.07 |        92.47 |           | GermÃ¡n GonzÃ¡lez    | Caficultor solicita contramuestra.
 QA-20260930-000023 | DLV-20260930-000046 |        12.23 |        89.75 |           | Alejandra Torres   | CafÃ© de buena presentaciÃ³n, sin olores extraÃ±os.
 QA-20260930-000012 | DLV-20260930-000057 |        12.16 |        92.79 |           | Guillermo Acevedo  |
 QA-20260930-000022 | DLV-20260930-000070 |        12.95 |       103.55 |           | Santiago Rojas     | CafÃ© con humedad alta, requiere mÃ¡s secado.
 QA-20260930-000025 | DLV-20260930-000083 |        16.00 |       102.88 |           | GermÃ¡n PeÃ±a        |
 QA-20260930-000078 | DLV-20260930-000093 |        12.01 |        91.64 |           | Heriberto Galvis   |
 QA-20260930-000045 | DLV-20260930-000104 |        12.11 |        92.52 |           | Ruth PolanÃ­a       |
 QA-20260930-000105 | DLV-20260930-000260 |        12.01 |        92.44 |           | Daniel Betancur    |
 QA-20260930-000085 | DLV-20260930-000161 |        12.03 |        92.12 |           | Carlos Ospina      | Muestra limpia, color homogÃ©neo.
 QA-20260930-000093 | DLV-20260930-000178 |        12.11 |        92.83 |           | NicolÃ¡s Serrano    | Humedad en el lÃ­mite superior, se recomienda mejorar el secado.
 QA-20260930-000134 | DLV-20260930-000236 |        12.48 |        89.55 |           | Gloria Restrepo    |
 QA-20260930-000035 | DLV-20260930-000115 |        12.31 |        90.58 |           | Santiago Rojas     | Muestra tomada por duplicado.
 QA-20260930-000076 | DLV-20260930-000116 |        12.08 |        91.70 |           | GermÃ¡n GonzÃ¡lez    |
 QA-20260930-000094 | DLV-20260930-000227 |        12.43 |        96.11 |           | Ruth PolanÃ­a       |
 QA-20260930-000056 | DLV-20260930-000120 |        12.40 |        93.55 |           | Alejandra Torres   |
 QA-20260930-000099 | DLV-20260930-000131 |        12.15 |        92.38 |           | Gustavo Serrano    |
 QA-20260930-000077 | DLV-20260930-000144 |        12.25 |        92.93 |           | Emilio PolanÃ­a     |
 QA-20260930-000086 | DLV-20260930-000147 |        15.20 |        96.57 |           | Erika Restrepo     | Olor a fermento en la muestra.
 QA-20260930-000052 | DLV-20260930-000149 |        12.31 |        91.85 |           | EfraÃ­n Betancur    | Grano uniforme, buen secado.
 QA-20260930-000102 | DLV-20260930-000155 |        12.31 |        94.01 |     87.28 | Adriana Losada     |
 QA-20260930-000082 | DLV-20260930-000111 |        12.38 |        94.29 |     87.18 | Sara SÃ¡nchez       |
 QA-20260930-000137 | DLV-20260930-000295 |        12.35 |        91.07 |     87.14 | Sara SÃ¡nchez       |
 QA-20260930-000113 | DLV-20260930-000223 |         9.57 |        99.70 |     85.05 | Reinaldo BermÃºdez  | CafÃ© sobresecado, grano quebradizo.
 QA-20260930-000119 | DLV-20260930-000253 |         8.39 |       106.52 |     84.33 | AnÃ­bal PabÃ³n       | Exceso de impurezas y pasilla.
 QA-20260930-000069 | DLV-20260930-000109 |        15.30 |        99.98 |     83.85 | EfraÃ­n Betancur    |
 QA-20260930-000145 | DLV-20260930-000277 |        12.27 |        93.96 |     83.32 | Reinaldo BermÃºdez  | Muestra tomada por duplicado.
 QA-20260930-000013 | DLV-20260930-000038 |        12.28 |        91.77 |     83.22 | Adriana Losada     |
 QA-20260930-000092 | DLV-20260930-000113 |        12.39 |        90.14 |     83.16 | Wilson Galvis      |
 QA-20260930-000104 | DLV-20260930-000214 |        17.68 |        97.46 |     82.59 | Carolina RodrÃ­guez | Olor a fermento en la muestra.
 QA-20260930-000121 | DLV-20260930-000200 |        12.38 |        90.67 |     81.34 | Guillermo Acevedo  |
 QA-20260930-000005 | DLV-20260930-000040 |        12.22 |        95.01 |     80.54 | IvÃ¡n Castro        |
 QA-20260930-000095 | DLV-20260930-000118 |        12.32 |        92.00 |     80.52 | Laura Henao        |
 QA-20260930-000018 | DLV-20260930-000006 |        17.24 |       103.31 |     79.98 | NicolÃ¡s Serrano    | CafÃ© con humedad alta, requiere mÃ¡s secado.
 QA-20260930-000026 | DLV-20260930-000005 |        12.19 |        95.42 |     78.56 | Wilson Galvis      |
(40 filas)

**/