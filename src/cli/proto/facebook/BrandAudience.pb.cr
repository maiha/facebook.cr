## Generated from facebook/BrandAudience.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BrandAudience
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :delivery_targeting, Targeting, 2
        optional :description, :string, 3
        optional :name, :string, 4
        repeated :sentence_lines, :string, 5
        optional :status, :string, 6
        optional :targeting, Targeting, 7
        optional :time_created, Datetime, 8
        optional :time_updated, Datetime, 9
      end
    end
    
    struct BrandAudienceArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, BrandAudience, 1
      end
    end
    end
  end
