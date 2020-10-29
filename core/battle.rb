require_relative './pkm.rb'
require_relative './move.rb'

def one_hit(prompt, p1, p2)
  choice = p1.moves.pretty_p prompt, p1.name
  move = p1.moves[choice]
  factor = p2.factor(move)
  dmg = (move.attk * factor).round

  slowp "#{p1.name} used #{move.name}!"

  txt = case factor
        when 0.5
          'It is not very effective...'
        when 2
          'It is super effective!'
        when 0.25
          'It has almost no effect...'
        when 4
          'It is extremely effective!'
        when 0
          'It has no effect...'
        end

  slowp txt unless txt.nil?

  p2.hit(dmg)
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
