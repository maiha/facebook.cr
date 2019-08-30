## Generated from facebook/AdPreview.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdPreview
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :body, :string, 1
      end
    end
    
    struct AdPreviewArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdPreview, 1
      end
    end
    end
  end
