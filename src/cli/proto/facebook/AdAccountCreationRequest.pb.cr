## Generated from facebook/AdAccountCreationRequest.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccountCreationRequest
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :ad_accounts_currency, :string, 2
        optional :additional_comment, :string, 3
        optional :address_in_chinese, :string, 4
        optional :address_in_local_language, :string, 5
        optional :business_registration_id, :string, 6
        optional :chinese_legal_entity_name, :string, 7
        optional :credit_card_id, :string, 8
        optional :english_legal_entity_name, :string, 9
        optional :extended_credit_id, :string, 10
        optional :is_smb, :bool, 11
        optional :is_test, :bool, 12
        optional :is_under_authorization, :bool, 13
        optional :legal_entity_name_in_local_language, :string, 14
        optional :oe_request_id, :string, 15
        optional :official_website_url, :string, 16
        optional :planning_agency_business_id, :string, 17
        repeated :promotable_app_ids, :string, 18
        repeated :promotable_page_ids, :string, 19
        repeated :promotable_urls, :string, 20
        optional :status, :string, 21
        optional :subvertical, :string, 22
        optional :time_created, Datetime, 23
        optional :vertical, :string, 24
        optional :advertiser_business_id, :string, 25
        repeated :promotable_page_urls, :string, 26
      end
    end
    
    struct AdAccountCreationRequestArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAccountCreationRequest, 1
      end
    end
    end
  end
