Move = Struct.new(:name, :attk, :type) do
end

class MoveArray < Array
  def pretty_p(prompt, name)
    choices = each_with_index.map do |x, i|
      { "#{x.name} | Damage: #{x.attk} | #{x.type.stat}": i }
    end
    prompt.select("Which move should #{name} use?", choices)
  end
end
