## Generated from facebook/CustomAudienceSession.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CustomAudienceSession
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :end_time, :string, 1
        optional :num_invalid_entries, :string, 2
        optional :num_matched, :string, 3
        optional :num_received, :string, 4
        optional :progress, :string, 5
        optional :session_id, :string, 6
        optional :stage, :string, 7
        optional :start_time, :string, 8
      end
    end
    
    struct CustomAudienceSessionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CustomAudienceSession, 1
      end
    end
    end
  end
