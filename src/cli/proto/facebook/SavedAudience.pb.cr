## Generated from facebook/SavedAudience.proto
require "protobuf"

module Facebook
  module Proto
    
    struct SavedAudience
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :approximate_count, :int64, 2
        optional :description, :string, 3
        optional :name, :string, 4
        optional :run_status, :string, 5
        repeated :sentence_lines, :string, 6
        optional :targeting, Targeting, 7
        optional :time_created, Datetime, 8
        optional :time_updated, Datetime, 9
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
