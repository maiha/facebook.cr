## Generated from facebook/PlatformImageSource.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PlatformImageSource
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :height, :int64, 1
        optional :source, :string, 2
        optional :width, :int64, 3
      end
    end
    
    struct PlatformImageSourceArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PlatformImageSource, 1
      end
    end
    end
  end
