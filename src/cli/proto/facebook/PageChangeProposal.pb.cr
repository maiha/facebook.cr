## Generated from facebook/PageChangeProposal.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PageChangeProposal
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :acceptance_status, :string, 2
        optional :category, :string, 3
        optional :current_value, :string, 4
        optional :proposed_value, :string, 5
      end
    end
    
    struct PageChangeProposalArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PageChangeProposal, 1
      end
    end
    end
  end
