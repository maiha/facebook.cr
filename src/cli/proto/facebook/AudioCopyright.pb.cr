## Generated from facebook/AudioCopyright.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AudioCopyright
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :creation_time, Datetime, 2
        optional :displayed_matches_count, :int64, 3
        optional :in_conflict, :bool, 4
        optional :isrc, :string, 5
        repeated :ownership_countries, :string, 6
        optional :reference_file_status, :string, 7
        optional :ridge_monitoring_status, :string, 8
        optional :update_time, Datetime, 9
        repeated :whitelisted_ig_users, :string, 10
      end
    end
    
    struct AudioCopyrightArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AudioCopyright, 1
      end
    end
    end
  end
