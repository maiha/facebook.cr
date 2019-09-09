CREATE TABLE reach_frequency_curve_upper_confidence_range (
  impression_upper Array(Int64),
  num_points Nullable(Int64),
  reach Array(Int64),
  reach_upper Array(Int64),
  uniq_video_views_2s_upper Array(Int64),
  video_views_2s_upper Array(Int64)
)
ENGINE = Log
