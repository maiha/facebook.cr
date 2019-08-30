## Generated from facebook/DynamicItemDisplayBundleFolder.proto
require "protobuf"

module Facebook
  module Proto
    
    struct DynamicItemDisplayBundleFolder
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :categorization_criteria, :string, 2
        optional :name, :string, 3
      end
    end
    
    struct DynamicItemDisplayBundleFolderArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, DynamicItemDisplayBundleFolder, 1
      end
    end
    end
  end
