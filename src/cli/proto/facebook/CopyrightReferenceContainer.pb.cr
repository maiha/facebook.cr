## Generated from facebook/CopyrightReferenceContainer.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CopyrightReferenceContainer
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :content_type, :string, 2
        optional :copyright_creation_time, Datetime, 3
        optional :download_hd_url, :string, 4
        optional :duration_in_sec, :double, 5
        optional :fingerprint_validity, :string, 6
        optional :iswc, :string, 7
        optional :published_time, Datetime, 8
        optional :thumbnail_url, :string, 9
        optional :title, :string, 10
        optional :universal_content_id, :string, 11
        repeated :writer_names, :string, 12
      end
    end
    
    struct CopyrightReferenceContainerArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CopyrightReferenceContainer, 1
      end
    end
    end
  end
