## Generated from facebook/AdImage.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdImage
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :created_time, Datetime, 3
        repeated :creatives, :string, 4
        optional :hash, :string, 5
        optional :height, :int64, 6
        optional :is_associated_creatives_in_adgroups, :bool, 7
        optional :name, :string, 8
        optional :original_height, :int64, 9
        optional :original_width, :int64, 10
        optional :permalink_url, :string, 11
        optional :status, :string, 12
        optional :updated_time, Datetime, 13
        optional :url, :string, 14
        optional :url_128, :string, 15
        optional :width, :int64, 16
      end
    end
    
    struct AdImageArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdImage, 1
      end
    end
    end
  end
