## Generated from facebook/PageStartInfo.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PageStartInfo
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :type, :string, 1
      end
    end
    
    struct PageStartInfoArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PageStartInfo, 1
      end
    end
    end
  end
