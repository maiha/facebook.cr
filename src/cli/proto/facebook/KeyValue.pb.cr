## Generated from facebook/KeyValue.proto
require "protobuf"

module Facebook
  module Proto
    
    struct KeyValue
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :key, :string, 1
        optional :value, :string, 2
      end
    end
    
    struct KeyValueArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, KeyValue, 1
      end
    end
    end
  end
