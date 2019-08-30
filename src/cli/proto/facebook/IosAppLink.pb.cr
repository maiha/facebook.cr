## Generated from facebook/IosAppLink.proto
require "protobuf"

module Facebook
  module Proto
    
    struct IosAppLink
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :app_name, :string, 1
        optional :app_store_id, :string, 2
        optional :url, :string, 3
      end
    end
    
    struct IosAppLinkArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, IosAppLink, 1
      end
    end
    end
  end
