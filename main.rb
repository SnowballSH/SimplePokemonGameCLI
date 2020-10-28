require_relative './core/battle.rb'
require_relative './core/utils.rb'
require_relative './core/type.rb'

require 'tty-prompt'

def main
  pikachu = create_pokemon(
    'Pikachu', 90, ['Electric'], [
      ['Thunder', 40, 'Electric'],
      ['Volt Tackle', 25, 'Electric']
    ]
  )

  raichu = create_pokemon(
    'Raichu', 120, %w[Electric Psychic], [
      ['Reflect', 0, 'Psychic'],
      ['Iron Tail', 35, 'Steel']
    ]
  )

  battle(pikachu, raichu)
end

begin
  main
rescue Interrupt
  puts 'You quit!'
end
