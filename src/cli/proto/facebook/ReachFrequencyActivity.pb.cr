## Generated from facebook/ReachFrequencyActivity.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ReachFrequencyActivity
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :account_id, :string, 1
        optional :campaign_active, :bool, 2
        optional :campaign_started, :bool, 3
        optional :creative_uploaded, :bool, 4
        optional :delivered_budget, :int64, 5
        optional :delivered_impression, :int64, 6
        optional :delivered_reach, :int64, 7
        optional :delivered_total_impression, :int64, 8
        optional :io_approved, :bool, 9
        optional :sf_link, :string, 10
      end
    end
    
    struct ReachFrequencyActivityArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ReachFrequencyActivity, 1
      end
    end
    end
  end
