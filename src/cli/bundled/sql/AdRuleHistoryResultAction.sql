CREATE TABLE ad_rule_history_result_action (
  action Nullable(String),
  field Nullable(String),
  new_value Nullable(String),
  old_value Nullable(String)
)
ENGINE = Log
