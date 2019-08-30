## Generated from facebook/BrandAudience.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BrandAudience
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :description, :string, 2
        optional :name, :string, 3
        repeated :sentence_lines, :string, 4
        optional :status, :string, 5
        optional :time_created, Datetime, 6
        optional :time_updated, Datetime, 7
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
