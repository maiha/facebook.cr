CREATE TABLE ad_creative_video_data (
  additional_image_index Nullable(Int64),
  branded_content_shared_to_sponsor_status Nullable(String),
  branded_content_sponsor_page_id Nullable(String),
  image_hash Nullable(String),
  image_url Nullable(String),
  link_description Nullable(String),
  message Nullable(String),
  offer_id Nullable(String),
  page_welcome_message Nullable(String),
  retailer_item_ids Array(String),
  targeting Nullable(String),
  title Nullable(String),
  video_id Nullable(String)
)
ENGINE = Log
