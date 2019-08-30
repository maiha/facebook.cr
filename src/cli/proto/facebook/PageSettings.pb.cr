## Generated from facebook/PageSettings.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PageSettings
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :setting, :string, 1
      end
    end
    
    struct PageSettingsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PageSettings, 1
      end
    end
    end
  end
