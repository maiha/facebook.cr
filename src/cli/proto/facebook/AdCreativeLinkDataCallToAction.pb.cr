## Generated from facebook/AdCreativeLinkDataCallToAction.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativeLinkDataCallToAction
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :type, :string, 1
      end
    end
    
    struct AdCreativeLinkDataCallToActionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativeLinkDataCallToAction, 1
      end
    end
    end
  end
