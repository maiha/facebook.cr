## Generated from facebook/LiveEncoder.proto
require "protobuf"

module Facebook
  module Proto
    
    struct LiveEncoder
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :brand, :string, 2
        optional :creation_time, Datetime, 3
        optional :device_id, :string, 4
        optional :last_heartbeat_time, Datetime, 5
        optional :model, :string, 6
        optional :name, :string, 7
        optional :status, :string, 8
        optional :version, :string, 9
      end
    end
    
    struct LiveEncoderArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LiveEncoder, 1
      end
    end
    end
  end
