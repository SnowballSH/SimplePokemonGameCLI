require_relative './core/battle.rb'
require_relative './core/utils.rb'
require_relative './core/type.rb'
require_relative './data.rb'

require 'tty-prompt'
require 'colorize'

def main
  puts 'Select the two Pokemons that will have a battle.'.light_blue
  battle(select_pokemon, select_pokemon)
end

begin
  main
rescue Interrupt
  puts "\nYou quit!".colorize(:default)
end
