## Generated from facebook/MinimumBudget.proto
require "protobuf"

module Facebook
  module Proto
    
    struct MinimumBudget
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :currency, :string, 1
        optional :min_daily_budget_high_freq, :int64, 2
        optional :min_daily_budget_imp, :int64, 3
        optional :min_daily_budget_low_freq, :int64, 4
        optional :min_daily_budget_video_views, :int64, 5
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
