CREATE TABLE ad_promoted_object (
  application_id Nullable(String),
  custom_conversion_id Nullable(String),
  custom_event_str Nullable(String),
  custom_event_type Nullable(String),
  event_id Nullable(String),
  fundraiser_campaign_id Nullable(String),
  object_store_url Nullable(String),
  offer_id Nullable(String),
  offline_conversion_data_set_id Nullable(String),
  page_id Nullable(String),
  pixel_aggregation_rule Nullable(String),
  pixel_id Nullable(String),
  pixel_rule Nullable(String),
  place_page_set_id Nullable(String),
  product_catalog_id Nullable(String),
  product_item_id Nullable(String),
  product_set_id Nullable(String),
  retention_days Nullable(String)
)
ENGINE = Log
