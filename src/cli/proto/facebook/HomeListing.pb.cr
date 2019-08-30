## Generated from facebook/HomeListing.proto
require "protobuf"

module Facebook
  module Proto
    
    struct HomeListing
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :ac_type, :string, 2
        optional :additional_fees_description, :string, 3
        optional :agent_company, :string, 4
        optional :agent_email, :string, 5
        optional :agent_name, :string, 6
        optional :agent_phone, :string, 7
        optional :area_size, :int64, 8
        optional :area_unit, :string, 9
        optional :availability, :string, 10
        optional :currency, :string, 11
        optional :days_on_market, :int64, 12
        optional :description, :string, 13
        optional :furnish_type, :string, 14
        optional :group_id, :string, 15
        optional :heating_type, :string, 16
        optional :home_listing_id, :string, 17
        repeated :images, :string, 18
        optional :laundry_type, :string, 19
        optional :listing_type, :string, 20
        optional :max_currency, :string, 21
        optional :max_price, :string, 22
        optional :min_currency, :string, 23
        optional :min_price, :string, 24
        optional :name, :string, 25
        optional :num_baths, :double, 26
        optional :num_beds, :double, 27
        optional :num_rooms, :double, 28
        optional :num_units, :int64, 29
        optional :parking_type, :string, 30
        optional :partner_verification, :string, 31
        optional :pet_policy, :string, 32
        optional :price, :string, 33
        optional :property_type, :string, 34
        repeated :sanitized_images, :string, 35
        optional :url, :string, 36
        optional :year_built, :int64, 37
      end
    end
    
    struct HomeListingArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, HomeListing, 1
      end
    end
    end
  end
