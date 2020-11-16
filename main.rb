require_relative './core/battle.rb'
require_relative './core/utils.rb'
require_relative './core/type.rb'
require_relative './data.rb'

require 'tty-prompt'
require 'colorize'

def main
  battle(get_pokemon('pikachu'), get_pokemon('togekiss'))
end

begin
  main
rescue Interrupt
  puts "\nYou quit!".colorize(:default)
end
