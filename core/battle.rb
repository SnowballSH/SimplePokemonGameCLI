require_relative './pkm.rb'
require_relative './move.rb'

def one_hit(prompt, p1, p2)
  choice = p1.moves.pretty_p prompt, p1.name
  move = p1.moves[choice]
  slowp "#{p1.name} used #{move.name}! It caused #{move.attk} damage."
  p2.hit_by_move(move)
  slowp "#{p2.name} now has #{p2.real_hp} hp."
end

def battle(p1, p2)
  prompt = TTY::Prompt.new

  slowp p1.stat
  slowp p2.stat
  puts "\n"

  until p1.fainted? || p2.fainted?
    [[p1, p2], [p2, p1]].each do |set|
      one_hit(prompt, *set)
      break if p1.fainted? || p2.fainted?
    end
  end
  slowp "#{p1.fainted? ? p1.name : p2.name} fainted! #{p2.fainted? ? p1.name : p2.name} is the winner!"
end
