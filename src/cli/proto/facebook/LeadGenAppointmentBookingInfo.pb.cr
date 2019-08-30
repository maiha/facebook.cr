## Generated from facebook/LeadGenAppointmentBookingInfo.proto
require "protobuf"

module Facebook
  module Proto
    
    struct LeadGenAppointmentBookingInfo
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :advertiser_timezone_offset, :string, 1
        repeated :appointment_durations, :string, 2
      end
    end
    
    struct LeadGenAppointmentBookingInfoArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LeadGenAppointmentBookingInfo, 1
      end
    end
    end
  end
