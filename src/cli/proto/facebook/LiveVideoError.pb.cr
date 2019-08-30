## Generated from facebook/LiveVideoError.proto
require "protobuf"

module Facebook
  module Proto
    
    struct LiveVideoError
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :creation_time, Datetime, 2
        optional :error_code, :int64, 3
        optional :error_message, :string, 4
        optional :error_type, :string, 5
      end
    end
    
    struct LiveVideoErrorArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LiveVideoError, 1
      end
    end
    end
  end
