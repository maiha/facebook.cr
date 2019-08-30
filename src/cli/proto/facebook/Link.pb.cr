## Generated from facebook/Link.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Link
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :caption, :string, 2
        optional :created_time, Datetime, 3
        optional :description, :string, 4
        optional :icon, :string, 5
        optional :link, :string, 6
        optional :message, :string, 7
        optional :multi_share_optimized, :bool, 8
        optional :name, :string, 9
      end
    end
    
    struct LinkArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Link, 1
      end
    end
    end
  end
