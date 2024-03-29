-- Customer from Spain on Mobile, Male and following characteristics: => Likely to churn
SELECT ai_query('dbdemos_jerome_churn',
    named_struct("user_id","4ce55564-5f57-4b92-a9a8-be20bf02f0b6", "canal","MOBILE", "country","SPAIN", "gender",0, "age_group",6, "order_count",3, "total_amount",215, "total_item",7, "last_transaction","2024-03-05T06:24:49", "platform","other", "event_count",3, "session_count",3, "days_since_creation",253, "days_since_last_activity",6, "days_last_event",2),
    returnType => 'STRING') AS predicted_churn;


-- Customer from Spain on Web, Female and following characteristics: => Should not churn
SELECT ai_query('dbdemos_jerome_churn',
    named_struct("user_id","b662ce5f-6294-4831-ae8b-33aecfa7d6e9", "canal","WEBAPP", "country","SPAIN", "gender",1, "age_group",5, "order_count",2, "total_amount",124, "total_item",4, "last_transaction","2024-03-04T21:28:14", "platform","ios", "event_count",2, "session_count",2, "days_since_creation",89, "days_since_last_activity",11, "days_last_event",10),
    returnType => 'STRING') AS predicted_churn;
