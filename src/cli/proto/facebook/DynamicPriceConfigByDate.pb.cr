## Generated from facebook/DynamicPriceConfigByDate.proto
require "protobuf"

module Facebook
  module Proto
    
    struct DynamicPriceConfigByDate
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :checkin_date, :string, 2
        optional :prices, :string, 3
      end
    end
    
    struct DynamicPriceConfigByDateArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, DynamicPriceConfigByDate, 1
      end
    end
    end
  end
