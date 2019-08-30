## Generated from facebook/AdAccountDefaultDestination.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccountDefaultDestination
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :destination_id, :string, 1
        optional :destination_url, :string, 2
      end
    end
    
    struct AdAccountDefaultDestinationArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAccountDefaultDestination, 1
      end
    end
    end
  end
