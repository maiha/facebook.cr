CREATE TABLE extended_credit_invoice_group (
  id String,
  auto_enroll Nullable(UInt8),
  customer_po_number Nullable(String),
  emails Array(String),
  name Nullable(String)
)
ENGINE = Log
