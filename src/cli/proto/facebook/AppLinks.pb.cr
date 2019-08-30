## Generated from facebook/AppLinks.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AppLinks
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
      end
    end
    
    struct AppLinksArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AppLinks, 1
      end
    end
    end
  end
