## Generated from facebook/BroadTargetingCategories.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BroadTargetingCategories
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :category_description, :string, 2
        optional :name, :string, 3
        optional :parent_category, :string, 4
        repeated :path, :string, 5
        optional :size, :int64, 6
        optional :source, :string, 7
        optional :type, :int64, 8
        optional :type_name, :string, 9
        optional :untranslated_name, :string, 10
        optional :untranslated_parent_name, :string, 11
      end
    end
    
    struct BroadTargetingCategoriesArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, BroadTargetingCategories, 1
      end
    end
    end
  end
