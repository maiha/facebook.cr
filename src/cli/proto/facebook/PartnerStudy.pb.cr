## Generated from facebook/PartnerStudy.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PartnerStudy
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :additional_info, :string, 2
        optional :brand, :string, 3
        optional :client_name, :string, 4
        optional :emails, :string, 5
        repeated :input_ids, :string, 6
        optional :is_export, :bool, 7
        optional :location, :string, 8
        optional :match_file_ds, :string, 9
        optional :name, :string, 10
        optional :partner_defined_id, :string, 11
        optional :partner_household_graph_dataset_id, :string, 12
        optional :status, :string, 13
        optional :study_end_date, Datetime, 14
        optional :study_start_date, Datetime, 15
        optional :study_type, :string, 16
        optional :submit_date, Datetime, 17
      end
    end
    
    struct PartnerStudyArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PartnerStudy, 1
      end
    end
    end
  end
