Move = Struct.new(:name, :attk, :type, :special) do
end

class MoveArray < Array
  def pretty_p(prompt, pkm)
    name = pkm.name
    choices = each_with_index.map do |x, i|
      { "#{x.name} | Damage: #{x.attk} | #{x.type.stat}": i }
    end
    choices = choices << { 'Dynamax'.colorize(:red) => 'DYNAMAX' } if pkm.dynamaxed == false
    res = prompt.select("Which move should #{name} use?".colorize(:cyan), choices)

    if res == 'DYNAMAX'
      pkm.dynamax

      choices = each_with_index.map do |x, i|
        { "#{x.name} | Damage: #{x.attk} | #{x.type.stat}": i }
      end
      res = prompt.select("Which move should #{name} use?".colorize(:cyan), choices)
    end

    res
  end
end
