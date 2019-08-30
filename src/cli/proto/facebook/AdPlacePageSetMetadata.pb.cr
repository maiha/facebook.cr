## Generated from facebook/AdPlacePageSetMetadata.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdPlacePageSetMetadata
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :extra_data, :string, 1
      end
    end
    
    struct AdPlacePageSetMetadataArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdPlacePageSetMetadata, 1
      end
    end
    end
  end
