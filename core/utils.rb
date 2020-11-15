# Useful tool function to help develop the game

require_relative './pkm.rb'
require_relative './move.rb'
require_relative '../data.rb'

$stdout.sync = true

def create_pokemon(name, hp, type, moves, tds, atk, def_, speed)
  # create a new pokemon
  Pokemon.new(name, hp, Type.new(*type),
              MoveArray.new(moves.map do |y|
                x = MOVES[y]
                Move.new(x[0], x[1], Type.new(x[2]), x[3])
              end), tds, atk, def_, speed)
end

def slowp(txt, interval = INTERVAL)
  # print slowly
  txt.each_char { |c| putc c; $stdout.flush; sleep interval }
  puts ''
end

def fastp(txt, interval = INTERVAL / 4 * 3)
  # print fastly
  txt.each_char { |c| putc c; $stdout.flush; sleep interval }
  puts ''
end

def get_pokemon(name)
  # get pokemon from data.rb
  sym = name.downcase.to_sym
  unless res = POKEMONS[sym]
    raise "<Error> Pokemon Not Found: #{name}"
  end

  create_pokemon(*res)
end
