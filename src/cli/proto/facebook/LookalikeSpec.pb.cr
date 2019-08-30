## Generated from facebook/LookalikeSpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct LookalikeSpec
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :country, :string, 1
        optional :is_financial_service, :bool, 2
        optional :origin_event_name, :string, 3
        optional :origin_event_source_name, :string, 4
        optional :origin_event_source_type, :string, 5
        optional :product_set_name, :string, 6
        optional :ratio, :double, 7
        optional :starting_ratio, :double, 8
        repeated :target_countries, :string, 9
        repeated :target_country_names, :string, 10
        optional :type, :string, 11
      end
    end
    
    struct LookalikeSpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LookalikeSpec, 1
      end
    end
    end
  end
