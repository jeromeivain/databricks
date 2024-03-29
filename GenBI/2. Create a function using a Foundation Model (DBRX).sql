CREATE SCHEMA IF NOT EXISTS dbdemos_jerome.demos;

CREATE OR REPLACE FUNCTION dbdemos_jerome.demos.summarize(text STRING)
  RETURNS STRING
  RETURN ai_query(
    'databricks-dbrx-instruct',
    CONCAT('What is a good summary of the comment:\n', text));

CREATE OR REPLACE TABLE dbdemos_jerome.demos.comment_summarized AS 
SELECT o_comment, dbdemos_jerome.demos.summarize(o_comment) AS text FROM samples.tpch.orders LIMIT 5;


SELECT * FROM dbdemos_jerome.demos.comment_summarized;