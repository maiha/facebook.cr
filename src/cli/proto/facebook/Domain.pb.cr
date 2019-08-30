## Generated from facebook/Domain.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Domain
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
        optional :url, :string, 3
      end
    end
    
    struct DomainArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Domain, 1
      end
    end
    end
  end
