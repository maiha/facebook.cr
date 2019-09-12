## Generated from facebook/SavedAudience.proto
require "protobuf"

module Facebook
  module Proto
    
    struct SavedAudience
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :approximate_count, :int64, 3
        optional :description, :string, 4
        optional :name, :string, 5
        optional :run_status, :string, 6
        repeated :sentence_lines, :string, 7
        optional :targeting, Targeting, 8
        optional :time_created, Datetime, 9
        optional :time_updated, Datetime, 10
      end
    end
    
    struct SavedAudienceArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, SavedAudience, 1
      end
    end
    end
  end
