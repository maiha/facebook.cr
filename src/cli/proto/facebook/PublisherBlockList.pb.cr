## Generated from facebook/PublisherBlockList.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PublisherBlockList
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :business_owner_id, :string, 3
        optional :is_auto_blocking_on, :bool, 4
        optional :is_eligible_at_campaign_level, :bool, 5
        optional :last_update_time, Datetime, 6
        optional :last_update_user, :string, 7
        optional :name, :string, 8
        optional :owner_ad_account_id, :string, 9
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
