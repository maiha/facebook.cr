## Generated from facebook/MinimumBudget.proto
require "protobuf"

module Facebook
  module Proto
    
    struct MinimumBudget
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :account_id, :string, 1
        optional :currency, :string, 2
        optional :min_daily_budget_high_freq, :int64, 3
        optional :min_daily_budget_imp, :int64, 4
        optional :min_daily_budget_low_freq, :int64, 5
        optional :min_daily_budget_video_views, :int64, 6
      end
    end
    
    struct MinimumBudgetArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, MinimumBudget, 1
      end
    end
    end
  end
