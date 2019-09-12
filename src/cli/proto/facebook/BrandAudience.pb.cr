## Generated from facebook/BrandAudience.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BrandAudience
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :delivery_targeting, Targeting, 3
        optional :description, :string, 4
        optional :name, :string, 5
        repeated :sentence_lines, :string, 6
        optional :status, :string, 7
        optional :targeting, Targeting, 8
        optional :time_created, Datetime, 9
        optional :time_updated, Datetime, 10
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
