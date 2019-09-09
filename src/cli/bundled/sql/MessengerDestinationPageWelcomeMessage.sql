CREATE TABLE messenger_destination_page_welcome_message (
  id String,
  page_welcome_message_body Nullable(String),
  page_welcome_message_type Nullable(String),
  template_name Nullable(String),
  time_created Nullable(String),
  time_last_used Nullable(String)
)
ENGINE = Log
