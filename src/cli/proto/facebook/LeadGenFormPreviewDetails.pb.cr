## Generated from facebook/LeadGenFormPreviewDetails.proto
require "protobuf"

module Facebook
  module Proto
    
    struct LeadGenFormPreviewDetails
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :call_to_action_title, :string, 1
        optional :default_appointment_scheduling_inline_context, :string, 2
        optional :edit_text, :string, 3
        optional :email_inline_context_text, :string, 4
        optional :next_button_text, :string, 5
        optional :personal_info_text, :string, 6
        optional :phone_number_inline_context_text, :string, 7
        optional :review_your_info_text, :string, 8
        optional :secure_sharing_text, :string, 9
        optional :slide_to_submit_text, :string, 10
        optional :submit_button_text, :string, 11
      end
    end
    
    struct LeadGenFormPreviewDetailsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LeadGenFormPreviewDetails, 1
      end
    end
    end
  end
