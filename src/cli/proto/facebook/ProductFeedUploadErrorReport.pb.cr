## Generated from facebook/ProductFeedUploadErrorReport.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductFeedUploadErrorReport
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :file_handle, :string, 1
        optional :report_status, :string, 2
      end
    end
    
    struct ProductFeedUploadErrorReportArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductFeedUploadErrorReport, 1
      end
    end
    end
  end
