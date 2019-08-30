## Generated from facebook/MailingAddress.proto
require "protobuf"

module Facebook
  module Proto
    
    struct MailingAddress
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :city, :string, 2
        optional :country, :string, 3
        optional :postal_code, :string, 4
        optional :region, :string, 5
        optional :street1, :string, 6
        optional :street2, :string, 7
      end
    end
    
    struct MailingAddressArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, MailingAddress, 1
      end
    end
    end
  end
