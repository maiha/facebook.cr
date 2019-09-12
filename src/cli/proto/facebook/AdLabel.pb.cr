## Generated from facebook/AdLabel.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdLabel
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :created_time, Datetime, 3
        optional :name, :string, 4
        optional :updated_time, Datetime, 5
      end
    end
    
    struct AdLabelArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdLabel, 1
      end
    end
    end
  end
