## Generated from facebook/ProductSet.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductSet
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :auto_creation_url, :string, 2
        optional :filter, :string, 3
        optional :name, :string, 4
        optional :product_count, :int64, 5
      end
    end
    
    struct ProductSetArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductSet, 1
      end
    end
    end
  end
