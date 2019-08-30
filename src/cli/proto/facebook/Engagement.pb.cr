## Generated from facebook/Engagement.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Engagement
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :count, :int64, 1
        optional :count_string, :string, 2
        optional :count_string_with_like, :string, 3
        optional :count_string_without_like, :string, 4
        optional :social_sentence, :string, 5
        optional :social_sentence_with_like, :string, 6
        optional :social_sentence_without_like, :string, 7
      end
    end
    
    struct EngagementArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Engagement, 1
      end
    end
    end
  end
