## Generated from facebook/ReachFrequencyAdFormat.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ReachFrequencyAdFormat
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :type, :string, 1
      end
    end
    
    struct ReachFrequencyAdFormatArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ReachFrequencyAdFormat, 1
      end
    end
    end
  end
