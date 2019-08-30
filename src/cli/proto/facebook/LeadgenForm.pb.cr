## Generated from facebook/LeadgenForm.proto
require "protobuf"

module Facebook
  module Proto
    
    struct LeadgenForm
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :allow_organic_lead, :bool, 2
        optional :block_display_for_non_targeted_viewer, :bool, 3
        optional :created_time, Datetime, 4
        optional :creator_id, :int64, 5
        optional :cusomized_tcpa_content, :string, 6
        optional :expired_leads_count, :int64, 7
        repeated :extra_details, :string, 8
        optional :follow_up_action_text, :string, 9
        optional :follow_up_action_url, :string, 10
        optional :is_optimized_for_quality, :bool, 11
        optional :leadgen_export_csv_url, :string, 12
        optional :leads_count, :int64, 13
        optional :locale, :string, 14
        optional :messenger_welcome_message, :string, 15
        optional :name, :string, 16
        optional :organic_leads_count, :int64, 17
        optional :page_id, :string, 18
        optional :privacy_policy_url, :string, 19
        optional :question_page_custom_headline, :string, 20
        optional :status, :string, 21
        optional :tcpa_compliance, :bool, 22
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
