## Generated from facebook/VideoCopyrightGeoGate.proto
require "protobuf"

module Facebook
  module Proto
    
    struct VideoCopyrightGeoGate
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :excluded_countries, :string, 1
        repeated :included_countries, :string, 2
      end
    end
    
    struct VideoCopyrightGeoGateArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, VideoCopyrightGeoGate, 1
      end
    end
    end
  end
