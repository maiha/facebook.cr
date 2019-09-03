struct Facebook::Proto::Targeting
  def inspect(io : IO)
    v = to_hash.reject{|k,v| v == nil}.inspect
    io << "Targeting(#{v})"
  end
end
