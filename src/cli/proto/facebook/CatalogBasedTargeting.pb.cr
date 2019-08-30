## Generated from facebook/CatalogBasedTargeting.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CatalogBasedTargeting
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :geo_targeting_type, :string, 1
      end
    end
    
    struct CatalogBasedTargetingArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CatalogBasedTargeting, 1
      end
    end
    end
  end
