## Generated from facebook/AdKeywords.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdKeywords
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :brands, :string, 1
        repeated :product_categories, :string, 2
        repeated :product_names, :string, 3
        repeated :search_terms, :string, 4
      end
    end
    
    struct AdKeywordsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdKeywords, 1
      end
    end
    end
  end
