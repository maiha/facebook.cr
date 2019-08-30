## Generated from facebook/AudiencePermissionForActions.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AudiencePermissionForActions
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :can_edit, :bool, 1
        optional :can_see_insight, :bool, 2
        optional :can_share, :bool, 3
        optional :subtype_supports_lookalike, :bool, 4
        optional :supports_recipient_lookalike, :bool, 5
      end
    end
    
    struct AudiencePermissionForActionsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AudiencePermissionForActions, 1
      end
    end
    end
  end
