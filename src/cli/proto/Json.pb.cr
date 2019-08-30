## Generated from Json.proto
require "protobuf"


struct Json
  include Protobuf::Message
  
  contract_of "proto2" do
    required :value, :string, 1
  end
end

struct JsonArray
  include Protobuf::Message
  
  contract_of "proto2" do
    repeated :array, Json, 1
  end
end
