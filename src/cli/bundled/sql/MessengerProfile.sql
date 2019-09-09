CREATE TABLE messenger_profile (
  account_linking_url Nullable(String),
  whitelisted_domains Array(String)
)
ENGINE = Log
