CREATE TABLE product_item (
  id String,
  additional_image_urls Array(String),
  age_group Nullable(String),
  availability Nullable(String),
  brand Nullable(String),
  category Nullable(String),
  color Nullable(String),
  condition Nullable(String),
  currency Nullable(String),
  custom_label_0 Nullable(String),
  custom_label_1 Nullable(String),
  custom_label_2 Nullable(String),
  custom_label_3 Nullable(String),
  custom_label_4 Nullable(String),
  description Nullable(String),
  expiration_date Nullable(String),
  gender Nullable(String),
  gtin Nullable(String),
  image_url Nullable(String),
  inventory Nullable(Int64),
  manufacturer_part_number Nullable(String),
  material Nullable(String),
  mobile_link Nullable(String),
  name Nullable(String),
  ordering_index Nullable(Int64),
  pattern Nullable(String),
  price Nullable(String),
  product_type Nullable(String),
  retailer_id Nullable(String),
  retailer_product_group_id Nullable(String),
  review_rejection_reasons Array(String),
  review_status Nullable(String),
  sale_price Nullable(String),
  sale_price_end_date Nullable(String),
  sale_price_start_date Nullable(String),
  shipping_weight_unit Nullable(String),
  shipping_weight_value Nullable(Float64),
  short_description Nullable(String),
  size Nullable(String),
  start_date Nullable(String),
  url Nullable(String),
  visibility Nullable(String),
  android_app_name Nullable(String),
  android_class Nullable(String),
  android_package Nullable(String),
  android_url Nullable(String),
  checkout_url Nullable(String),
  ios_app_name Nullable(String),
  ios_app_store_id Nullable(Int64),
  ios_url Nullable(String),
  ipad_app_name Nullable(String),
  ipad_app_store_id Nullable(Int64),
  ipad_url Nullable(String),
  iphone_app_name Nullable(String),
  iphone_app_store_id Nullable(Int64),
  iphone_url Nullable(String),
  launch_date Nullable(String),
  offer_price_amount Nullable(Int64),
  offer_price_end_date Nullable(String),
  offer_price_start_date Nullable(String),
  windows_phone_app_id Nullable(String),
  windows_phone_app_name Nullable(String),
  windows_phone_url Nullable(String)
)
ENGINE = Log