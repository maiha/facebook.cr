CREATE TABLE reach_frequency_activity (
  account_id String,
  campaign_active Nullable(UInt8),
  campaign_started Nullable(UInt8),
  creative_uploaded Nullable(UInt8),
  delivered_budget Nullable(Int64),
  delivered_impression Nullable(Int64),
  delivered_reach Nullable(Int64),
  delivered_total_impression Nullable(Int64),
  io_approved Nullable(UInt8),
  sf_link Nullable(String)
)
ENGINE = Log
