## Generated from facebook/SecuritySettings.proto
require "protobuf"

module Facebook
  module Proto
    
    struct SecuritySettings
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct SecuritySettingsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, SecuritySettings, 1
      end
    end
    end
  end
