## Generated from facebook/SavedMessageResponse.proto
require "protobuf"

module Facebook
  module Proto
    
    struct SavedMessageResponse
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :category, :string, 2
        optional :image, :string, 3
        optional :is_enabled, :bool, 4
        optional :message, :string, 5
        optional :title, :string, 6
      end
    end
    
    struct SavedMessageResponseArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, SavedMessageResponse, 1
      end
    end
    end
  end
