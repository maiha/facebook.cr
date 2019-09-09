CREATE TABLE targeting_dynamic_rule (
  _action_type Nullable(String),
  ad_group_id Nullable(String),
  campaign_group_id Nullable(String),
  campaign_id Nullable(String),
  impression_count Nullable(String),
  page_id Nullable(String),
  post Nullable(String),
  retention_seconds Nullable(String)
)
ENGINE = Log
