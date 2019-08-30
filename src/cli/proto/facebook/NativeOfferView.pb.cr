## Generated from facebook/NativeOfferView.proto
require "protobuf"

module Facebook
  module Proto
    
    struct NativeOfferView
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :save_count, :int64, 2
      end
    end
    
    struct NativeOfferViewArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, NativeOfferView, 1
      end
    end
    end
  end
