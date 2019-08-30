## Generated from facebook/PageCategory.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PageCategory
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :api_enum, :string, 2
        optional :name, :string, 3
      end
    end
    
    struct PageCategoryArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PageCategory, 1
      end
    end
    end
  end
