## Generated from facebook/UserDevice.proto
require "protobuf"

module Facebook
  module Proto
    
    struct UserDevice
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :hardware, :string, 1
        optional :os, :string, 2
      end
    end
    
    struct UserDeviceArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, UserDevice, 1
      end
    end
    end
  end
