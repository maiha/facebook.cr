CREATE TABLE product_item_commerce_insights (
  message_sends Nullable(Int64),
  organic_impressions Nullable(Int64),
  paid_impressions Nullable(Int64)
)
ENGINE = Log
