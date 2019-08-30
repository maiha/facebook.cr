## Generated from facebook/VideoUploadLimits.proto
require "protobuf"

module Facebook
  module Proto
    
    struct VideoUploadLimits
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :length, :int64, 1
        optional :size, :int64, 2
      end
    end
    
    struct VideoUploadLimitsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, VideoUploadLimits, 1
      end
    end
    end
  end
