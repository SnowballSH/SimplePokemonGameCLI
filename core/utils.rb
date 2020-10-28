require_relative './pkm.rb'
require_relative './move.rb'

$stdout.sync = true

def create_pokemon(name, hp, type, moves)
  Pokemon.new(name, hp, Type.new(*type),
              MoveArray.new(moves.map do |x|
                Move.new(x[0], x[1], Type.new(x[-1]))
              end))
end

def slowp(txt)
  txt.each_char { |c| putc c; $stdout.flush; sleep 0.05 }
  puts ''
end
