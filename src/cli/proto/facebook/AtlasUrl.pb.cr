## Generated from facebook/AtlasUrl.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AtlasUrl
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :url, :string, 1
      end
    end
    
    struct AtlasUrlArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AtlasUrl, 1
      end
    end
    end
  end
