CREATE OR REPLACE FUNCTION ASK_OPEN_AI(prompt STRING) RETURNS STRING RETURN AI_GENERATE_TEXT(
prompt,
"azure_openai/gpt-35-turbo",
"apiKey",
SECRET("dbdemos", "azure-openai"),
"temperature",
CAST(0.0 AS DOUBLE),
 "deploymentName",
 "dbdemo-gpt35",
 "resourceName",
 "dbdemos-open-ai",
 "apiVersion",
"2023-03-15-preview"
);

SELECT UniqueCode, Description as name ,
    ASK_OPEN_AI( CONCAT(
      'Résumé de l histoire de la compagnie aérienne ',
      Name,
      ' en 20 mots en français')
      ) as `history`
from matthieu_lamairesse.flights_perf.airlines
limit 10 