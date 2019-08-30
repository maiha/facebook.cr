## Generated from facebook/LiveVideoAdBreakConfig.proto
require "protobuf"

module Facebook
  module Proto
    
    struct LiveVideoAdBreakConfig
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :default_ad_break_duration, :int64, 1
        optional :failure_reason_polling_interval, :int64, 2
        optional :first_break_eligible_secs, :int64, 3
        optional :guide_url, :string, 4
        optional :is_eligible_to_onboard, :bool, 5
        optional :is_enabled, :bool, 6
        optional :onboarding_url, :string, 7
        optional :preparing_duration, :int64, 8
        optional :time_between_ad_breaks_secs, :int64, 9
        optional :viewer_count_threshold, :int64, 10
      end
    end
    
    struct LiveVideoAdBreakConfigArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LiveVideoAdBreakConfig, 1
      end
    end
    end
  end
