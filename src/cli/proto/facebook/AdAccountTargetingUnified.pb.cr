## Generated from facebook/AdAccountTargetingUnified.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccountTargetingUnified
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :audience_size, :int64, 2
        optional :conversion_lift, :double, 3
        optional :description, :string, 4
        optional :img, :string, 5
        optional :info, :string, 6
        optional :info_title, :string, 7
        optional :is_recommendation, :bool, 8
        optional :key, :string, 9
        optional :link, :string, 10
        optional :name, :string, 11
        optional :parent, :string, 12
        optional :partner, :string, 13
        repeated :path, :string, 14
        optional :performance_rating, :int64, 15
        optional :raw_name, :string, 16
        optional :recommendation_model, :string, 17
        optional :search_interest_id, :string, 18
        optional :source, :string, 19
        optional :spend, :double, 20
        optional :type, :string, 21
        optional :valid, :bool, 22
      end
    end
    
    struct AdAccountTargetingUnifiedArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAccountTargetingUnified, 1
      end
    end
    end
  end
