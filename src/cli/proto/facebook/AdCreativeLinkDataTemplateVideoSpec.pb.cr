## Generated from facebook/AdCreativeLinkDataTemplateVideoSpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativeLinkDataTemplateVideoSpec
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :categorization_criteria, :string, 1
        optional :template_id, :string, 2
      end
    end
    
    struct AdCreativeLinkDataTemplateVideoSpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativeLinkDataTemplateVideoSpec, 1
      end
    end
    end
  end
