## Generated from facebook/AdsTalHealthCheckError.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdsTalHealthCheckError
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :error_code, :int64, 1
        optional :target_id, :string, 2
      end
    end
    
    struct AdsTalHealthCheckErrorArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdsTalHealthCheckError, 1
      end
    end
    end
  end
