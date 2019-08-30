## Generated from facebook/WebAppLink.proto
require "protobuf"

module Facebook
  module Proto
    
    struct WebAppLink
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :should_fallback, :bool, 1
        optional :url, :string, 2
      end
    end
    
    struct WebAppLinkArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, WebAppLink, 1
      end
    end
    end
  end
