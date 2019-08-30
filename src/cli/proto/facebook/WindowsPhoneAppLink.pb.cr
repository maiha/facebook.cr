## Generated from facebook/WindowsPhoneAppLink.proto
require "protobuf"

module Facebook
  module Proto
    
    struct WindowsPhoneAppLink
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :app_id, :string, 1
        optional :app_name, :string, 2
        optional :url, :string, 3
      end
    end
    
    struct WindowsPhoneAppLinkArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, WindowsPhoneAppLink, 1
      end
    end
    end
  end
