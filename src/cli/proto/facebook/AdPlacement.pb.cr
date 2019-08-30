## Generated from facebook/AdPlacement.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdPlacement
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :bundle_id, :string, 2
        optional :display_format, :string, 3
        optional :external_placement_id, :string, 4
        optional :google_display_format, :string, 5
        optional :name, :string, 6
        optional :platform, :string, 7
        optional :status, :string, 8
      end
    end
    
    struct AdPlacementArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdPlacement, 1
      end
    end
    end
  end
