## Generated from facebook/User.proto
require "protobuf"

module Facebook
  module Proto
    
    struct User
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :about, :string, 2
        optional :auth_method, :string, 3
        optional :birthday, :string, 4
        optional :can_review_measurement_request, :bool, 5
        optional :email, :string, 6
        optional :first_name, :string, 7
        optional :gender, :string, 8
        optional :install_type, :string, 9
        optional :installed, :bool, 10
        repeated :interested_in, :string, 11
        optional :is_famedeeplinkinguser, :bool, 12
        optional :is_shared_login, :bool, 13
        optional :is_verified, :bool, 14
        optional :last_name, :string, 15
        optional :link, :string, 16
        optional :local_news_megaphone_dismiss_status, :bool, 17
        optional :local_news_subscription_status, :bool, 18
        optional :locale, :string, 19
        repeated :meeting_for, :string, 20
        optional :middle_name, :string, 21
        optional :name, :string, 22
        optional :name_format, :string, 23
        optional :political, :string, 24
        optional :profile_pic, :string, 25
        optional :public_key, :string, 26
        optional :quotes, :string, 27
        optional :relationship_status, :string, 28
        optional :religion, :string, 29
        optional :shared_login_upgrade_required_by, Datetime, 30
        optional :short_name, :string, 31
        optional :test_group, :int64, 32
        optional :third_party_id, :string, 33
        optional :timezone, :double, 34
        optional :token_for_business, :string, 35
        optional :updated_time, Datetime, 36
        optional :verified, :bool, 37
        optional :viewer_can_send_gift, :bool, 38
        optional :website, :string, 39
      end
    end
    
    struct UserArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, User, 1
      end
    end
    end
  end
