## Generated from facebook/ThirdPartyMeasurementReportDataset.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ThirdPartyMeasurementReportDataset
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :category, :string, 2
        optional :product, :string, 3
      end
    end
    
    struct ThirdPartyMeasurementReportDatasetArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ThirdPartyMeasurementReportDataset, 1
      end
    end
    end
  end
