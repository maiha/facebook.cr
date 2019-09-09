CREATE TABLE collaborative_ads_share_settings (
  id String,
  product_catalog_proxy_id Nullable(String),
  utm_campaign Nullable(String),
  utm_medium Nullable(String),
  utm_source Nullable(String)
)
ENGINE = Log
