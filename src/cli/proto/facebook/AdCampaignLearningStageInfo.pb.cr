## Generated from facebook/AdCampaignLearningStageInfo.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCampaignLearningStageInfo
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :attribution_windows, :string, 1
        optional :conversions, :int64, 2
        optional :exit_reason, :string, 3
        optional :last_sig_edit_ts, :int64, 4
        optional :status, :string, 5
        repeated :types, :string, 6
      end
    end
    
    struct AdCampaignLearningStageInfoArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCampaignLearningStageInfo, 1
      end
    end
    end
  end
