CREATE TABLE snap
(
  date         Date,
  table        String,
  account_id   String,
  id           String,
  updated_time DateTime,
  json         String
)
ENGINE = MergeTree(date, (date, table, account_id, id), 8192)
