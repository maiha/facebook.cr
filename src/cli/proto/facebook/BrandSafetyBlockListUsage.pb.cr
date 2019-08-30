## Generated from facebook/BrandSafetyBlockListUsage.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BrandSafetyBlockListUsage
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :current_usage, :int64, 1
        optional :new_usage, :int64, 2
        optional :platform, :string, 3
        optional :position, :string, 4
        optional :threshold, :int64, 5
      end
    end
    
    struct BrandSafetyBlockListUsageArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, BrandSafetyBlockListUsage, 1
      end
    end
    end
  end
