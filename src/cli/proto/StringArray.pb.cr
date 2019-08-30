## Generated from StringArray.proto
require "protobuf"


struct StringArray
  include Protobuf::Message
  
  contract_of "proto2" do
    repeated :array, :string, 1
  end
end

struct StringArrayArray
  include Protobuf::Message
  
  contract_of "proto2" do
    repeated :array, StringArray, 1
  end
end
