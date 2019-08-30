## Generated from facebook/PublisherBlockList.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PublisherBlockList
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :business_owner_id, :string, 2
        optional :is_auto_blocking_on, :bool, 3
        optional :is_eligible_at_campaign_level, :bool, 4
        optional :last_update_time, Datetime, 5
        optional :last_update_user, :string, 6
        optional :name, :string, 7
        optional :owner_ad_account_id, :string, 8
      end
    end
    
    struct PublisherBlockListArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PublisherBlockList, 1
      end
    end
    end
  end
