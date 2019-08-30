## Generated from facebook/LifeEvent.proto
require "protobuf"

module Facebook
  module Proto
    
    struct LifeEvent
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :created_time, Datetime, 2
        optional :description, :string, 3
        optional :end_time, Datetime, 4
        optional :is_hidden, :bool, 5
        optional :start_time, Datetime, 6
        optional :title, :string, 7
        optional :updated_time, Datetime, 8
      end
    end
    
    struct LifeEventArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LifeEvent, 1
      end
    end
    end
  end
