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
                create_move(x)
              end), tds, atk, def_, speed)
end

def create_move(x)
  Move.new(x[0], x[1], Type.new(x[2]), x[3])
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

def random_pokemon
  # generate random pokemon
  type = MOVES.keys.select { |x| x.start_with?('Max') || x.start_with?('G-Max') }.map { |x| x[3..-1] }.sample(2)
  name = POKEMONS[POKEMONS.keys.sample][0][0..2] + POKEMONS[POKEMONS.keys.sample][0][0..2].downcase
  tds = POKEMONS[POKEMONS.keys.sample][4]
  hp = rand(150..250)
  moves = MOVES.keys.select { |x| !(x.start_with?('Max') || x.start_with?('G-Max')) }.sample(4)
  atk = rand(50..200)
  def_ = rand(50..200)
  speed = rand(80..250)
  create_pokemon(name, hp, type, moves, tds, atk, def_, speed)
end
