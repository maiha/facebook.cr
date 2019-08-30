## Generated from facebook/AppRequest.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AppRequest
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :action_type, :string, 2
        optional :created_time, Datetime, 3
        optional :data, :string, 4
        optional :message, :string, 5
      end
    end
    
    struct AppRequestArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AppRequest, 1
      end
    end
    end
  end
