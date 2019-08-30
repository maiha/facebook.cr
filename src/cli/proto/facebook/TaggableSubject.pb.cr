## Generated from facebook/TaggableSubject.proto
require "protobuf"

module Facebook
  module Proto
    
    struct TaggableSubject
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
      end
    end
    
    struct TaggableSubjectArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TaggableSubject, 1
      end
    end
    end
  end
