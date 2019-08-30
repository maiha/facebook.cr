## Generated from facebook/MediaFingerprint.proto
require "protobuf"

module Facebook
  module Proto
    
    struct MediaFingerprint
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :duration_in_sec, :double, 2
        optional :fingerprint_content_type, :string, 3
        optional :fingerprint_type, :string, 4
        optional :title, :string, 5
        optional :universal_content_id, :string, 6
      end
    end
    
    struct MediaFingerprintArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, MediaFingerprint, 1
      end
    end
    end
  end
