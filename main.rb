require_relative './core/battle.rb'
require_relative './core/utils.rb'
require_relative './core/type.rb'
require_relative './data.rb'

require 'tty-prompt'

def main
  battle(get_pokemon('lapras'), get_pokemon('lapras'))
end

begin
  main
rescue Interrupt
  puts "\nYou quit!"
end
