## Generated from facebook/BusinessAssetGroup.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BusinessAssetGroup
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
      end
    end
    
    struct BusinessAssetGroupArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, BusinessAssetGroup, 1
      end
    end
    end
  end
