require "./spec_helper"

private def response(header)
  Facebook::Response.new(requested_at: Time.now, req: nil, code: 200, header: header, body: "")
end

describe Facebook::Response do
  describe "#json?" do
    it "returns false when content-type is not found" do
      response("Connection: keep-alive").json?.should be_false
    end

    it "returns true when content-type is application/json" do
      response("Content-Type: application/json; charset=UTF-8").media_type?.should eq("application/json")
      response("Content-Type: application/json; charset=UTF-8").json?.should be_true
    end

    it "otherwise, returns false" do
      response("Content-Type: text/html; charset=utf-8").media_type?.should eq("text/html")
      response("Content-Type: text/html; charset=utf-8").json?.should be_false
    end
  end
end
