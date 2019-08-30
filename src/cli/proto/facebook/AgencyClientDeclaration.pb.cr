## Generated from facebook/AgencyClientDeclaration.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AgencyClientDeclaration
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :agency_representing_client, :int64, 1
        optional :client_based_in_france, :int64, 2
        optional :client_city, :string, 3
        optional :client_country_code, :string, 4
        optional :client_email_address, :string, 5
        optional :client_name, :string, 6
        optional :client_postal_code, :string, 7
        optional :client_province, :string, 8
        optional :client_street, :string, 9
        optional :client_street2, :string, 10
        optional :has_written_mandate_from_advertiser, :int64, 11
        optional :is_client_paying_invoices, :int64, 12
      end
    end
    
    struct AgencyClientDeclarationArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AgencyClientDeclaration, 1
      end
    end
    end
  end
