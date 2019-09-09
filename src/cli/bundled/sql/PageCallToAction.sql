CREATE TABLE page_call_to_action (
  id String,
  android_deeplink Nullable(String),
  android_destination_type Nullable(String),
  android_package_name Nullable(String),
  android_url Nullable(String),
  created_time Nullable(DateTime),
  email_address Nullable(String),
  intl_number_with_plus Nullable(String),
  iphone_deeplink Nullable(String),
  iphone_destination_type Nullable(String),
  iphone_url Nullable(String),
  status Nullable(String),
  type Nullable(String),
  updated_time DateTime,
  web_destination_type Nullable(String),
  web_url Nullable(String)
)
ENGINE = Log
