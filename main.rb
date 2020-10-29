require_relative './core/battle.rb'
require_relative './core/utils.rb'
require_relative './core/type.rb'
require_relative './data.rb'

require 'tty-prompt'
require 'colorize'

def main
  battle(get_pokemon('onix'), get_pokemon('lapras'))
end

begin
  main
rescue Interrupt
  puts "\nYou quit!".colorize(:default)
end
