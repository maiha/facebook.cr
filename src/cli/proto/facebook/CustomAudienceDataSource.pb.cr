## Generated from facebook/CustomAudienceDataSource.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CustomAudienceDataSource
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :creation_params, :string, 1
        optional :sub_type, :string, 2
        optional :type, :string, 3
      end
    end
    
    struct CustomAudienceDataSourceArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CustomAudienceDataSource, 1
      end
    end
    end
  end
