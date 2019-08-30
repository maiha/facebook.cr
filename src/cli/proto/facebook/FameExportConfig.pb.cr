## Generated from facebook/FameExportConfig.proto
require "protobuf"

module Facebook
  module Proto
    
    struct FameExportConfig
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :can_edit, :bool, 1
        optional :column_id, :string, 2
        optional :display_name, :string, 3
        optional :format, :string, 4
      end
    end
    
    struct FameExportConfigArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, FameExportConfig, 1
      end
    end
    end
  end
