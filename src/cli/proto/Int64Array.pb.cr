## Generated from Int64Array.proto
require "protobuf"


struct Int64Array
  include Protobuf::Message
  
  contract_of "proto2" do
    repeated :array, :int64, 1
  end
end

struct Int64ArrayArray
  include Protobuf::Message
  
  contract_of "proto2" do
    repeated :array, Int64Array, 1
  end
end
