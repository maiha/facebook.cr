CREATE TABLE broad_targeting_categories (
  id String,
  category_description Nullable(String),
  name Nullable(String),
  parent_category Nullable(String),
  path Array(String),
  size Nullable(Int64),
  source Nullable(String),
  type Nullable(Int64),
  type_name Nullable(String),
  untranslated_name Nullable(String),
  untranslated_parent_name Nullable(String)
)
ENGINE = Log
