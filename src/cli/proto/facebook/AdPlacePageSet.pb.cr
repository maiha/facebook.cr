## Generated from facebook/AdPlacePageSet.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdPlacePageSet
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        repeated :location_types, :string, 3
        optional :name, :string, 4
        optional :pages_count, :int64, 5
      end
    end
    
    struct AdPlacePageSetArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdPlacePageSet, 1
      end
    end
    end
  end
