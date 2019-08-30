## Generated from facebook/Vehicle.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Vehicle
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :availability, :string, 2
        optional :body_style, :string, 3
        optional :condition, :string, 4
        optional :currency, :string, 5
        optional :custom_label_0, :string, 6
        optional :date_first_on_lot, :string, 7
        optional :dealer_communication_channel, :string, 8
        optional :dealer_email, :string, 9
        optional :dealer_id, :string, 10
        optional :dealer_name, :string, 11
        optional :dealer_phone, :string, 12
        optional :dealer_privacy_policy_url, :string, 13
        optional :description, :string, 14
        optional :drivetrain, :string, 15
        optional :exterior_color, :string, 16
        optional :fuel_type, :string, 17
        repeated :images, :string, 18
        optional :interior_color, :string, 19
        optional :legal_disclosure_impressum_url, :string, 20
        optional :make, :string, 21
        optional :model, :string, 22
        optional :previous_currency, :string, 23
        optional :previous_price, :string, 24
        optional :price, :string, 25
        optional :sale_currency, :string, 26
        optional :sale_price, :string, 27
        repeated :sanitized_images, :string, 28
        optional :state_of_vehicle, :string, 29
        optional :title, :string, 30
        optional :transmission, :string, 31
        optional :trim, :string, 32
        optional :url, :string, 33
        optional :vehicle_id, :string, 34
        optional :vehicle_registration_plate, :string, 35
        optional :vehicle_type, :string, 36
        optional :vin, :string, 37
        optional :year, :int64, 38
      end
    end
    
    struct VehicleArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Vehicle, 1
      end
    end
    end
  end
