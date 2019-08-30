## Generated from facebook/ProductItem.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductItem
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        repeated :additional_image_urls, :string, 2
        optional :age_group, :string, 3
        optional :availability, :string, 4
        optional :brand, :string, 5
        optional :category, :string, 6
        optional :color, :string, 7
        optional :condition, :string, 8
        optional :currency, :string, 9
        optional :custom_label_0, :string, 10
        optional :custom_label_1, :string, 11
        optional :custom_label_2, :string, 12
        optional :custom_label_3, :string, 13
        optional :custom_label_4, :string, 14
        optional :description, :string, 15
        optional :expiration_date, :string, 16
        optional :gender, :string, 17
        optional :gtin, :string, 18
        optional :image_url, :string, 19
        optional :inventory, :int64, 20
        optional :manufacturer_part_number, :string, 21
        optional :material, :string, 22
        optional :mobile_link, :string, 23
        optional :name, :string, 24
        optional :ordering_index, :int64, 25
        optional :pattern, :string, 26
        optional :price, :string, 27
        optional :product_type, :string, 28
        optional :retailer_id, :string, 29
        optional :retailer_product_group_id, :string, 30
        repeated :review_rejection_reasons, :string, 31
        optional :review_status, :string, 32
        optional :sale_price, :string, 33
        optional :sale_price_end_date, :string, 34
        optional :sale_price_start_date, :string, 35
        optional :shipping_weight_unit, :string, 36
        optional :shipping_weight_value, :double, 37
        optional :short_description, :string, 38
        optional :size, :string, 39
        optional :start_date, :string, 40
        optional :url, :string, 41
        optional :visibility, :string, 42
        optional :android_app_name, :string, 43
        optional :android_class, :string, 44
        optional :android_package, :string, 45
        optional :android_url, :string, 46
        optional :checkout_url, :string, 47
        optional :ios_app_name, :string, 48
        optional :ios_app_store_id, :int64, 49
        optional :ios_url, :string, 50
        optional :ipad_app_name, :string, 51
        optional :ipad_app_store_id, :int64, 52
        optional :ipad_url, :string, 53
        optional :iphone_app_name, :string, 54
        optional :iphone_app_store_id, :int64, 55
        optional :iphone_url, :string, 56
        optional :launch_date, :string, 57
        optional :offer_price_amount, :int64, 58
        optional :offer_price_end_date, Datetime, 59
        optional :offer_price_start_date, Datetime, 60
        optional :windows_phone_app_id, :string, 61
        optional :windows_phone_app_name, :string, 62
        optional :windows_phone_url, :string, 63
      end
    end
    
    struct ProductItemArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductItem, 1
      end
    end
    end
  end
