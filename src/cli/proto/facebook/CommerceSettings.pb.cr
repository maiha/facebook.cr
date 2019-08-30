## Generated from facebook/CommerceSettings.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CommerceSettings
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :inventory, :int64, 1
        optional :total_inventory, :int64, 2
      end
    end
    
    struct CommerceSettingsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CommerceSettings, 1
      end
    end
    end
  end
