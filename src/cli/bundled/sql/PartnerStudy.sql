CREATE TABLE partner_study (
  id String,
  additional_info Nullable(String),
  brand Nullable(String),
  client_name Nullable(String),
  emails Nullable(String),
  input_ids Array(String),
  is_export Nullable(UInt8),
  location Nullable(String),
  match_file_ds Nullable(String),
  name Nullable(String),
  partner_defined_id Nullable(String),
  partner_household_graph_dataset_id Nullable(String),
  status Nullable(String),
  study_end_date Nullable(String),
  study_start_date Nullable(String),
  study_type Nullable(String),
  submit_date Nullable(String)
)
ENGINE = Log
