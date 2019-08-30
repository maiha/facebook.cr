## Generated from facebook/AutomotiveModel.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AutomotiveModel
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :automotive_model_id, :string, 2
        optional :availability, :string, 3
        optional :body_style, :string, 4
        optional :currency, :string, 5
        optional :custom_label_0, :string, 6
        optional :description, :string, 7
        optional :drivetrain, :string, 8
        optional :exterior_color, :string, 9
        optional :finance_description, :string, 10
        optional :finance_type, :string, 11
        optional :fuel_type, :string, 12
        optional :generation, :string, 13
        repeated :images, :string, 14
        optional :interior_color, :string, 15
        optional :interior_upholstery, :string, 16
        optional :make, :string, 17
        optional :model, :string, 18
        optional :price, :string, 19
        repeated :sanitized_images, :string, 20
        optional :title, :string, 21
        optional :transmission, :string, 22
        optional :trim, :string, 23
        optional :url, :string, 24
        optional :year, :int64, 25
      end
    end
    
    struct AutomotiveModelArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AutomotiveModel, 1
      end
    end
    end
  end
