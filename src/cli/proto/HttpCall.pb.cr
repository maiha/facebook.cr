## Generated from HttpCall.proto
require "protobuf"


struct HttpCall
  include Protobuf::Message
  
  contract_of "proto2" do
    required :url, :string, 1
    required :method, :string, 2
    required :header, :string, 3
    required :body, :string, 4
    required :requested_at, Datetime, 5
    optional :responsed_at, Datetime, 6
    optional :status, :int32, 7
    optional :res_header, :string, 8
    optional :res_body, :string, 9
  end
end

struct HttpCallArray
  include Protobuf::Message
  
  contract_of "proto2" do
    repeated :array, HttpCall, 1
  end
end
