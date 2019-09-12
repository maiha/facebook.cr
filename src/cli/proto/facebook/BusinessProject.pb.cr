## Generated from facebook/BusinessProject.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BusinessProject
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :created_time, Datetime, 3
        optional :name, :string, 4
      end
    end
    
    struct BusinessProjectArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, BusinessProject, 1
      end
    end
    end
  end
