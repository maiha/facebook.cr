CREATE TABLE ad_contract (
  account_id String,
  account_mgr_fbid Nullable(String),
  account_mgr_name Nullable(String),
  adops_person_name Nullable(String),
  advertiser_address_fbid Nullable(String),
  advertiser_fbid Nullable(String),
  advertiser_name Nullable(String),
  agency_discount Nullable(Float64),
  agency_name Nullable(String),
  bill_to_address_fbid Nullable(String),
  bill_to_fbid Nullable(String),
  campaign_name Nullable(String),
  created_by Nullable(String),
  created_date Nullable(Int64),
  customer_io Nullable(String),
  io_number Nullable(Int64),
  io_terms Nullable(String),
  io_type Nullable(String),
  last_updated_by Nullable(String),
  last_updated_date Nullable(Int64),
  max_end_date Nullable(Int64),
  mdc_fbid Nullable(String),
  media_plan_number Nullable(String),
  min_start_date Nullable(Int64),
  msa_contract Nullable(String),
  payment_terms Nullable(String),
  rev_hold_flag Nullable(UInt8),
  rev_hold_released_by Nullable(Int64),
  rev_hold_released_on Nullable(Int64),
  salesrep_fbid Nullable(String),
  salesrep_name Nullable(String),
  sold_to_address_fbid Nullable(String),
  sold_to_fbid Nullable(String),
  status Nullable(String),
  subvertical Nullable(String),
  thirdparty_billed Nullable(Int64),
  thirdparty_password Nullable(String),
  thirdparty_uid Nullable(String),
  thirdparty_url Nullable(String),
  vat_country Nullable(String),
  version Nullable(Int64),
  vertical Nullable(String)
)
ENGINE = Log
