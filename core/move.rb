Move = Struct.new(:name, :attk, :type) do
end

class MoveArray < Array
  def pretty_p(prompt)
    choices = each_with_index.map do |x, i|
      { "#{x.name} | Damage: #{x.attk} | #{x.type.stat}": i }
    end
    prompt.select('Which move?', choices)
  end
end
