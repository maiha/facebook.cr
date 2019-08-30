## Generated from facebook/VideoCopyrightConditionGroup.proto
require "protobuf"

module Facebook
  module Proto
    
    struct VideoCopyrightConditionGroup
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :action, :string, 1
        optional :validity_status, :string, 2
      end
    end
    
    struct VideoCopyrightConditionGroupArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, VideoCopyrightConditionGroup, 1
      end
    end
    end
  end
