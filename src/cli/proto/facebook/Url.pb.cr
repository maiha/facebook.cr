## Generated from facebook/Url.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Url
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
      end
    end
    
    struct UrlArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Url, 1
      end
    end
    end
  end
