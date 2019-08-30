## Generated from facebook/AdStudy.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdStudy
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :canceled_time, Datetime, 2
        optional :cooldown_start_time, Datetime, 3
        optional :created_time, Datetime, 4
        optional :description, :string, 5
        optional :end_time, Datetime, 6
        optional :name, :string, 7
        optional :observation_end_time, Datetime, 8
        optional :results_first_available_date, :string, 9
        optional :start_time, Datetime, 10
        optional :type, :string, 11
        optional :updated_time, Datetime, 12
        optional :client_business, :string, 13
        optional :confidence_level, :double, 14
        repeated :viewers, :int64, 15
      end
    end
    
    struct AdStudyArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdStudy, 1
      end
    end
    end
  end
