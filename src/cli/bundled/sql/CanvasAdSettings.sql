CREATE TABLE canvas_ad_settings (
  is_canvas_collection_eligible Nullable(UInt8),
  lead_form_created_time Nullable(Int64),
  lead_form_name Nullable(String),
  lead_gen_form_id Nullable(String),
  leads_count Nullable(Int64),
  product_set_id Nullable(String),
  use_retailer_item_ids Nullable(UInt8)
)
ENGINE = Log
