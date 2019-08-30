## Generated from facebook/FundingSourceDetails.proto
require "protobuf"

module Facebook
  module Proto
    
    struct FundingSourceDetails
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :display_string, :string, 2
        optional :type, :int64, 3
      end
    end
    
    struct FundingSourceDetailsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, FundingSourceDetails, 1
      end
    end
    end
  end
