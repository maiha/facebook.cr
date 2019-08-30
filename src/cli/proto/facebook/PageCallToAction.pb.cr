## Generated from facebook/PageCallToAction.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PageCallToAction
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :android_deeplink, :string, 2
        optional :android_destination_type, :string, 3
        optional :android_package_name, :string, 4
        optional :android_url, :string, 5
        optional :created_time, Datetime, 6
        optional :email_address, :string, 7
        optional :intl_number_with_plus, :string, 8
        optional :iphone_deeplink, :string, 9
        optional :iphone_destination_type, :string, 10
        optional :iphone_url, :string, 11
        optional :status, :string, 12
        optional :type, :string, 13
        optional :updated_time, Datetime, 14
        optional :web_destination_type, :string, 15
        optional :web_url, :string, 16
      end
    end
    
    struct PageCallToActionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PageCallToAction, 1
      end
    end
    end
  end
