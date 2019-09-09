CREATE TABLE live_video_targeting (
  age_max Nullable(Int64),
  age_min Nullable(Int64),
  excluded_countries Array(String)
)
ENGINE = Log
