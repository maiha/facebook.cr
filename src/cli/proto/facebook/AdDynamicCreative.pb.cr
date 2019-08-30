## Generated from facebook/AdDynamicCreative.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdDynamicCreative
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :preview_url, :string, 1
      end
    end
    
    struct AdDynamicCreativeArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdDynamicCreative, 1
      end
    end
    end
  end
