## Generated from facebook/AdgroupIssuesInfo.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdgroupIssuesInfo
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :error_code, :int64, 1
        optional :error_message, :string, 2
        optional :error_summary, :string, 3
        optional :error_type, :string, 4
        optional :level, :string, 5
      end
    end
    
    struct AdgroupIssuesInfoArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdgroupIssuesInfo, 1
      end
    end
    end
  end
