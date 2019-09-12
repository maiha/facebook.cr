## Generated from facebook/AdStudy.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdStudy
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :canceled_time, Datetime, 3
        optional :cooldown_start_time, Datetime, 4
        optional :created_time, Datetime, 5
        optional :description, :string, 6
        optional :end_time, Datetime, 7
        optional :name, :string, 8
        optional :observation_end_time, Datetime, 9
        optional :results_first_available_date, :string, 10
        optional :start_time, Datetime, 11
        optional :type, :string, 12
        optional :updated_time, Datetime, 13
        optional :client_business, :string, 14
        optional :confidence_level, :double, 15
        repeated :viewers, :int64, 16
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
