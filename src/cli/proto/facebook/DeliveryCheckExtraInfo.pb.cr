## Generated from facebook/DeliveryCheckExtraInfo.proto
require "protobuf"

module Facebook
  module Proto
    
    struct DeliveryCheckExtraInfo
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :adgroup_ids, :string, 1
        repeated :campaign_ids, :string, 2
        repeated :countries, :string, 3
      end
    end
    
    struct DeliveryCheckExtraInfoArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, DeliveryCheckExtraInfo, 1
      end
    end
    end
  end
