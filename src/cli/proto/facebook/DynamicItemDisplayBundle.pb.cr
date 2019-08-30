## Generated from facebook/DynamicItemDisplayBundle.proto
require "protobuf"

module Facebook
  module Proto
    
    struct DynamicItemDisplayBundle
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :description, :string, 2
        optional :name, :string, 3
        optional :url, :string, 4
      end
    end
    
    struct DynamicItemDisplayBundleArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, DynamicItemDisplayBundle, 1
      end
    end
    end
  end
