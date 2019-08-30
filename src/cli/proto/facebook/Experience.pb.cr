## Generated from facebook/Experience.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Experience
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :description, :string, 2
        optional :name, :string, 3
      end
    end
    
    struct ExperienceArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Experience, 1
      end
    end
    end
  end
