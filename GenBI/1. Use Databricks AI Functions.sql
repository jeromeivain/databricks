-- to mask specified entities in a given text using SQL.
SELECT ai_mask(
    'John Doe lives in New York. His email is john.doe@example.com. Contact him at 555-1234',
    array('person', 'address', 'email', 'phone number')
  );


--  to classify input text according to labels you provide using SQL
SELECT ai_classify(
    'My password is leaked.', 
    array('urgent', 'not urgent')
    );


-- to perform sentiment analysis on input text using SQL
SELECT ai_analyze_sentiment('The dinner was awesome but the waiter was rude');


-- to answer the user-provided prompt using SQL
SELECT ai_gen('Generate a concise, cheerful pitch for Databricks in order to win the FE Cup');


-- Full list of AI FUNCTIONS here: https://docs.databricks.com/en/large-language-models/ai-functions.html