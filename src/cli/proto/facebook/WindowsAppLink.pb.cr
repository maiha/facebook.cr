## Generated from facebook/WindowsAppLink.proto
require "protobuf"

module Facebook
  module Proto
    
    struct WindowsAppLink
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :app_id, :string, 1
        optional :app_name, :string, 2
        optional :package_family_name, :string, 3
        optional :url, :string, 4
      end
    end
    
    struct WindowsAppLinkArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, WindowsAppLink, 1
      end
    end
    end
  end
