## Generated from facebook/BusinessCreativeFolder.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BusinessCreativeFolder
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :creation_time, Datetime, 2
        optional :description, :string, 3
        optional :name, :string, 4
      end
    end
    
    struct BusinessCreativeFolderArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, BusinessCreativeFolder, 1
      end
    end
    end
  end
