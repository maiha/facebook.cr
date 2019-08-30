## Generated from facebook/AdCreativePortraitCustomizations.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativePortraitCustomizations
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct AdCreativePortraitCustomizationsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativePortraitCustomizations, 1
      end
    end
    end
  end
