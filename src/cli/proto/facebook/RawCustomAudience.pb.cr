## Generated from facebook/RawCustomAudience.proto
require "protobuf"

module Facebook
  module Proto
    
    struct RawCustomAudience
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
      end
    end
    
    struct RawCustomAudienceArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, RawCustomAudience, 1
      end
    end
    end
  end
