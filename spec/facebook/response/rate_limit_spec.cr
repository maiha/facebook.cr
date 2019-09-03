require "../spec_helper"

private def json_string_throttled
<<-EOF
{
  "477506029096629": [
    {
      "type": "ads_management",
      "call_count": 36,
      "total_cputime": 64,
      "total_time": 101,
      "estimated_time_to_regain_access": 55
    }
  ]
}
EOF
end

private def json_string_normal
<<-EOF
{
  "477506029096629": [
    {
      "type": "ads_management",
      "call_count": 6,
      "total_cputime": 4,
      "total_time": 1,
      "estimated_time_to_regain_access": 5
    }
  ]
}
EOF
end

private def rate_limits(json)
  Facebook::Response::RateLimit.parse(json)
end

private def rate_limit(json) : Facebook::Response::RateLimit
  rate_limits(json).values.flatten.first
end

describe Facebook::Response::RateLimit do
  describe ".parse(json_string)" do
    it "returns Hash(String, Array(RateLimit))" do
      rate_limits(json_string_throttled).should be_a(Hash(String, Array(Facebook::Response::RateLimit)))
    end
  end

  it "works" do
    rate_limit(json_string_throttled).max_pct.should eq(101)
    rate_limit(json_string_throttled).throttled?.should be_true

    rate_limit(json_string_normal).max_pct.should eq(6)
    rate_limit(json_string_normal).throttled?.should be_false
  end
end
