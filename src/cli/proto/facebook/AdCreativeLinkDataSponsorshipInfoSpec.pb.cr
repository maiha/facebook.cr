## Generated from facebook/AdCreativeLinkDataSponsorshipInfoSpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativeLinkDataSponsorshipInfoSpec
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :sponsor_image_url, :string, 1
        optional :sponsor_name, :string, 2
      end
    end
    
    struct AdCreativeLinkDataSponsorshipInfoSpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativeLinkDataSponsorshipInfoSpec, 1
      end
    end
    end
  end
