require "./spec_helper"

private def current_url
  "https://graph.facebook.com/v4.0/act_123/campaigns?access_token=xxx&fields=id%2Cname&limit=100&after=abc"
end

private def reduce_data(*args)
  Cmds::BatchCmd::ReduceData.reduce_data(*args)
end

private def limit?(*args)
  Cmds::BatchCmd::ReduceData.limit?(*args)
end

describe Cmds::BatchCmd::ReduceData do
  describe ".update_limit(url, limit)" do
    it "replace limit parameter" do
      Cmds::BatchCmd::ReduceData.update_limit(current_url, 10).should eq "https://graph.facebook.com/v4.0/act_123/campaigns?access_token=xxx&fields=id%2Cname&limit=10&after=abc"
    end

    it "do nothing when limit is nil" do
      Cmds::BatchCmd::ReduceData.update_limit(current_url, nil).should eq current_url
    end
  end

  describe ".extract_limit?(url)" do
    it "returns limit value if exists" do
      limit?(current_url).should eq 100
    end

    it "returns nil if not found" do
      limit?("").should eq nil
    end
  end

  describe ".reduce_data(current_url, min_limit)" do
    it "builds reduced_url by setting limit to limit/2" do
      reduce_data(current_url, 10).should eq "https://graph.facebook.com/v4.0/act_123/campaigns?access_token=xxx&fields=id%2Cname&limit=50&after=abc"
    end

    it "respects min_limit" do
      reduce_data(current_url, 99).should eq "https://graph.facebook.com/v4.0/act_123/campaigns?access_token=xxx&fields=id%2Cname&limit=99&after=abc"
    end

    it "raises when it has already reached the min_limit" do
      expect_raises(Exception, /reached reduce_data_min_limit/) do
        reduce_data(current_url, 100)
      end

      expect_raises(Exception, /reached reduce_data_min_limit/) do
        reduce_data(current_url, 200)
      end
    end
  end
end
