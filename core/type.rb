Type = Struct.new(:type1, :type2) do
  def stat
    "#{type1}#{type2 ? ', ' + type2 : ''}"
  end
end
