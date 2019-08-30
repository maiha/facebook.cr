## Generated from facebook/PageUpcomingChange.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PageUpcomingChange
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :change_type, :string, 2
        optional :effective_time, Datetime, 3
        optional :timer_status, :string, 4
      end
    end
    
    struct PageUpcomingChangeArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PageUpcomingChange, 1
      end
    end
    end
  end
