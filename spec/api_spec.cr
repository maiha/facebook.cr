require "./spec_helper"

private macro parse_get(arg, exp)
  it {{arg}} do
    api = Facebook::Api::Get.parse({{arg}})
    api.request_path.should eq({{exp}})
  end
end

describe Facebook::Api do
  describe ".parse" do
    parse_get "/me", "/me"
    parse_get "/me -d limit=3", "/me?limit=3"
    parse_get "/me -d limit=3 -d token=xxx", "/me?limit=3&token=xxx"
  end
end
