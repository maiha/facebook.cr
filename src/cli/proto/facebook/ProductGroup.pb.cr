## Generated from facebook/ProductGroup.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductGroup
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :retailer_id, :string, 2
      end
    end
    
    struct ProductGroupArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductGroup, 1
      end
    end
    end
  end
