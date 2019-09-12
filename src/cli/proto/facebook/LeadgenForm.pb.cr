## Generated from facebook/LeadgenForm.proto
require "protobuf"

module Facebook
  module Proto
    
    struct LeadgenForm
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :allow_organic_lead, :bool, 3
        optional :block_display_for_non_targeted_viewer, :bool, 4
        optional :created_time, Datetime, 5
        optional :creator_id, :int64, 6
        optional :cusomized_tcpa_content, :string, 7
        optional :expired_leads_count, :int64, 8
        repeated :extra_details, :string, 9
        optional :follow_up_action_text, :string, 10
        optional :follow_up_action_url, :string, 11
        optional :is_optimized_for_quality, :bool, 12
        optional :leadgen_export_csv_url, :string, 13
        optional :leads_count, :int64, 14
        optional :locale, :string, 15
        optional :messenger_welcome_message, :string, 16
        optional :name, :string, 17
        optional :organic_leads_count, :int64, 18
        optional :page_id, :string, 19
        optional :privacy_policy_url, :string, 20
        optional :question_page_custom_headline, :string, 21
        optional :status, :string, 22
        optional :tcpa_compliance, :bool, 23
      end
    end
    
    struct LeadgenFormArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LeadgenForm, 1
      end
    end
    end
  end
