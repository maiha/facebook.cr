## Generated from facebook/VideoPoll.proto
require "protobuf"

module Facebook
  module Proto
    
    struct VideoPoll
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :close_after_voting, :bool, 2
        optional :default_open, :bool, 3
        optional :question, :string, 4
        optional :show_gradient, :bool, 5
        optional :show_results, :bool, 6
        optional :status, :string, 7
      end
    end
    
    struct VideoPollArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, VideoPoll, 1
      end
    end
    end
  end
