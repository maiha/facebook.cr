CREATE TABLE snap
(
  date         Date,
  table        String,
  account_id   String,
  id           String,
  updated_time DateTime,
  json         String
)
ENGINE = MergeTree
PARTITION BY date
ORDER BY (date, table, account_id, id)
SETTINGS index_granularity = 8192 
