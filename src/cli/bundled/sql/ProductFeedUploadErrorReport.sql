CREATE TABLE product_feed_upload_error_report (
  file_handle Nullable(String),
  report_status Nullable(String)
)
ENGINE = Log
