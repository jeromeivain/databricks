CREATE OR REPLACE TABLE dbdemos_jerome.demos.call_center_reply AS SELECT
  string(` C a l l   R e a s o n `) as reason,
  ai_gen(
    "Generate a call center professional answer in 60 words to address the customer's call reason." || ` C a l l   R e a s o n `
  ) AS reply
FROM
  dbdemos_jerome.demos.calls_data_expert_extract_extract
GROUP BY ` C a l l   R e a s o n `;


SELECT * from dbdemos_jerome.demos.call_center_reply;