CREATE TABLE reach_frequency_curve_lower_confidence_range (
  impression_lower Array(Int64),
  num_points Nullable(Int64),
  reach Array(Int64),
  reach_lower Array(Int64),
  uniq_video_views_2s_lower Array(Int64),
  video_views_2s_lower Array(Int64)
)
ENGINE = Log
