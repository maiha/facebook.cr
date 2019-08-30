## Generated from facebook/CustomConversion.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CustomConversion
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :aggregation_rule, :string, 3
        optional :creation_time, Datetime, 4
        optional :custom_event_type, :string, 5
        optional :default_conversion_value, :int64, 6
        optional :description, :string, 7
        optional :event_source_type, :string, 8
        optional :first_fired_time, Datetime, 9
        optional :is_archived, :bool, 10
        optional :is_unavailable, :bool, 11
        optional :last_fired_time, Datetime, 12
        optional :name, :string, 13
        optional :retention_days, :int64, 14
        optional :rule, :string, 15
        optional :advanced_rule, :string, 16
        optional :event_source_id, :string, 17
        optional :custom_conversion_id, :string, 18
      end
    end
    
    struct CustomConversionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CustomConversion, 1
      end
    end
    end
  end
