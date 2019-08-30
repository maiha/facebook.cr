## Generated from Datetime.proto
require "protobuf"


struct Datetime
  include Protobuf::Message
  
  contract_of "proto2" do
    required :value, :string, 1
  end
end

struct DatetimeArray
  include Protobuf::Message
  
  contract_of "proto2" do
    repeated :array, Datetime, 1
  end
end
