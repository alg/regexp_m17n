module RegexpM17N
  UTF8 = Encoding.find("UTF-8")

  def self.non_empty?(str)
    # Forcing doesn't encode, but changes the encoding.
    # Since we don't care about the actual characters, just their presence,
    # using this method is reasonable
    str.to_s.force_encoding(UTF8) =~ /^.+$/
  end
end
