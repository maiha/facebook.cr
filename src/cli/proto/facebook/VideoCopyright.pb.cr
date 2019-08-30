## Generated from facebook/VideoCopyright.proto
require "protobuf"

module Facebook
  module Proto
    
    struct VideoCopyright
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :content_category, :string, 2
        optional :copyright_content_id, :string, 3
        optional :in_conflict, :bool, 4
        optional :monitoring_status, :string, 5
        optional :monitoring_type, :string, 6
        optional :reference_file_disabled, :bool, 7
        optional :reference_file_disabled_by_ops, :bool, 8
        optional :reference_file_expired, :bool, 9
        optional :reference_owner_id, :string, 10
        repeated :whitelisted_ids, :string, 11
      end
    end
    
    struct VideoCopyrightArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, VideoCopyright, 1
      end
    end
    end
  end
