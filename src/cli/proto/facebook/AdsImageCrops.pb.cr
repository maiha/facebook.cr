## Generated from facebook/AdsImageCrops.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdsImageCrops
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :_100x100, StringArray, 1
        repeated :_100x72, StringArray, 2
        repeated :_191x100, StringArray, 3
        repeated :_400x150, StringArray, 4
        repeated :_400x500, StringArray, 5
        repeated :_600x360, StringArray, 6
        repeated :_90x160, StringArray, 7
      end
    end
    
    struct AdsImageCropsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdsImageCrops, 1
      end
    end
    end
  end
