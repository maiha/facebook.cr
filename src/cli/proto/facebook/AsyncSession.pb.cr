## Generated from facebook/AsyncSession.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AsyncSession
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :complete_time, Datetime, 2
        optional :error_code, :int64, 3
        optional :exception, :string, 4
        optional :method, :string, 5
        optional :name, :string, 6
        optional :percent_completed, :int64, 7
        optional :platform_version, :string, 8
        optional :result, :string, 9
        optional :start_time, Datetime, 10
        optional :status, :string, 11
        optional :uri, :string, 12
      end
    end
    
    struct AsyncSessionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AsyncSession, 1
      end
    end
    end
  end
