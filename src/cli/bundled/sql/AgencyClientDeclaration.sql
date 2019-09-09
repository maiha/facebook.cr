CREATE TABLE agency_client_declaration (
  agency_representing_client Nullable(Int64),
  client_based_in_france Nullable(Int64),
  client_city Nullable(String),
  client_country_code Nullable(String),
  client_email_address Nullable(String),
  client_name Nullable(String),
  client_postal_code Nullable(String),
  client_province Nullable(String),
  client_street Nullable(String),
  client_street2 Nullable(String),
  has_written_mandate_from_advertiser Nullable(Int64),
  is_client_paying_invoices Nullable(Int64)
)
ENGINE = Log
