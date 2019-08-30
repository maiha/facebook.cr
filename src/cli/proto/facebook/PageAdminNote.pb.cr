## Generated from facebook/PageAdminNote.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PageAdminNote
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :body, :string, 2
      end
    end
    
    struct PageAdminNoteArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PageAdminNote, 1
      end
    end
    end
  end
