## Generated from facebook/AdCreativeTextData.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativeTextData
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :message, :string, 1
      end
    end
    
    struct AdCreativeTextDataArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativeTextData, 1
      end
    end
    end
  end
