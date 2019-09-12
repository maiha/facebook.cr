## Generated from facebook/User.proto
require "protobuf"

module Facebook
  module Proto
    
    struct User
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :about, :string, 3
        optional :auth_method, :string, 4
        optional :birthday, :string, 5
        optional :can_review_measurement_request, :bool, 6
        optional :email, :string, 7
        optional :first_name, :string, 8
        optional :gender, :string, 9
        optional :install_type, :string, 10
        optional :installed, :bool, 11
        repeated :interested_in, :string, 12
        optional :is_famedeeplinkinguser, :bool, 13
        optional :is_shared_login, :bool, 14
        optional :is_verified, :bool, 15
        optional :last_name, :string, 16
        optional :link, :string, 17
        optional :local_news_megaphone_dismiss_status, :bool, 18
        optional :local_news_subscription_status, :bool, 19
        optional :locale, :string, 20
        repeated :meeting_for, :string, 21
        optional :middle_name, :string, 22
        optional :name, :string, 23
        optional :name_format, :string, 24
        optional :political, :string, 25
        optional :profile_pic, :string, 26
        optional :public_key, :string, 27
        optional :quotes, :string, 28
        optional :relationship_status, :string, 29
        optional :religion, :string, 30
        optional :shared_login_upgrade_required_by, Datetime, 31
        optional :short_name, :string, 32
        optional :test_group, :int64, 33
        optional :third_party_id, :string, 34
        optional :timezone, :double, 35
        optional :token_for_business, :string, 36
        optional :updated_time, Datetime, 37
        optional :verified, :bool, 38
        optional :viewer_can_send_gift, :bool, 39
        optional :website, :string, 40
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
