## Generated from facebook/AdAccountRoas.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccountRoas
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :adgroup_id, :string, 1
        optional :arpu_180d, :double, 2
        optional :arpu_1d, :double, 3
        optional :arpu_30d, :double, 4
        optional :arpu_365d, :double, 5
        optional :arpu_3d, :double, 6
        optional :arpu_7d, :double, 7
        optional :arpu_90d, :double, 8
        optional :campaign_group_id, :string, 9
        optional :campaign_id, :string, 10
        optional :date_start, :string, 11
        optional :date_stop, :string, 12
        optional :installs, :int64, 13
        optional :revenue, :double, 14
        optional :revenue_180d, :double, 15
        optional :revenue_1d, :double, 16
        optional :revenue_30d, :double, 17
        optional :revenue_365d, :double, 18
        optional :revenue_3d, :double, 19
        optional :revenue_7d, :double, 20
        optional :revenue_90d, :double, 21
        optional :spend, :double, 22
        optional :yield_180d, :double, 23
        optional :yield_1d, :double, 24
        optional :yield_30d, :double, 25
        optional :yield_365d, :double, 26
        optional :yield_3d, :double, 27
        optional :yield_7d, :double, 28
        optional :yield_90d, :double, 29
      end
    end
    
    struct AdAccountRoasArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAccountRoas, 1
      end
    end
    end
  end
