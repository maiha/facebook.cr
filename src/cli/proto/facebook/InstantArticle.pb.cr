## Generated from facebook/InstantArticle.proto
require "protobuf"

module Facebook
  module Proto
    
    struct InstantArticle
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :canonical_url, :string, 2
        optional :development_mode, :bool, 3
        optional :html_source, :string, 4
        optional :publish_status, :string, 5
        optional :published, :bool, 6
      end
    end
    
    struct InstantArticleArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, InstantArticle, 1
      end
    end
    end
  end
