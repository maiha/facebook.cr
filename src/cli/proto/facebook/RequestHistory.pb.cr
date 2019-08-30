## Generated from facebook/RequestHistory.proto
require "protobuf"

module Facebook
  module Proto
    
    struct RequestHistory
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :api_version, :string, 1
        optional :created_time, Datetime, 2
        optional :error_code, :int64, 3
        optional :graph_path, :string, 4
        optional :http_method, :string, 5
      end
    end
    
    struct RequestHistoryArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, RequestHistory, 1
      end
    end
    end
  end
