## Generated from facebook/Persona.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Persona
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
        optional :profile_picture_url, :string, 3
      end
    end
    
    struct PersonaArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Persona, 1
      end
    end
    end
  end
