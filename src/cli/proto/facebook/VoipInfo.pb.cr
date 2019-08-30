## Generated from facebook/VoipInfo.proto
require "protobuf"

module Facebook
  module Proto
    
    struct VoipInfo
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :has_mobile_app, :bool, 1
        optional :has_permission, :bool, 2
        optional :is_callable, :bool, 3
        optional :is_callable_webrtc, :bool, 4
        optional :is_pushable, :bool, 5
        optional :reason_code, :int64, 6
        optional :reason_description, :string, 7
      end
    end
    
    struct VoipInfoArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, VoipInfo, 1
      end
    end
    end
  end
