## Generated from facebook/AndroidAppLink.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AndroidAppLink
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :app_name, :string, 1
        optional :_class, :string, 2
        optional :package, :string, 3
        optional :url, :string, 4
      end
    end
    
    struct AndroidAppLinkArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AndroidAppLink, 1
      end
    end
    end
  end
