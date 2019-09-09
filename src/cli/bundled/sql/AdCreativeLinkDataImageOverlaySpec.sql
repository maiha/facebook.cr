CREATE TABLE ad_creative_link_data_image_overlay_spec (
  custom_text_type Nullable(String),
  float_with_margin Nullable(UInt8),
  overlay_template Nullable(String),
  position Nullable(String),
  text_font Nullable(String),
  text_template_tags Array(String),
  text_type Nullable(String),
  theme_color Nullable(String)
)
ENGINE = Log
