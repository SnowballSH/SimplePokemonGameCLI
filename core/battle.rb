require_relative './pkm.rb'
require_relative './move.rb'

def one_hit(_prompt, move, p1, p2)
  factor = p2.factor(move)
  dmg = p2.calc_dmg(p1, move, factor)

  slowp("#{p1.name} used #{move.name}!".colorize(:default))

  txt = case factor
        when 0.5
          'It is not very effective...'.colorize(:default)
        when 2
          'It is super effective!'.colorize(:light_magenta)
        when 0.25
          'It has almost no effect...'.colorize(:default)
        when 4
          'It is extremely effective!'.colorize(:light_magenta)
        when 0
          'It has no effect...'.colorize(:red)
        end

  slowp(txt) unless txt.nil? || move.attk == 0

  p2.hit(dmg)
  move.special.call(p1, p2) unless move.special.nil?
end

# Main Battle Function
def battle(p1, p2)
  prompt = TTY::Prompt.new

  fastp(p1.stat)
  fastp(p2.stat)
  puts "\n"

  until p1.fainted? || p2.fainted?
    xx = [p1, p2].sort { |a, b| b.speed <=> a.speed }

    moves = []

    xx.each_with_index do |set, i|
      choice = set.moves.pretty_p prompt, set
      if choice == 'DYNAMAX'
        set.dynamax
        choice = set.moves.pretty_p prompt, set
      end

      # choice = rand(4)
      moves[i] = set.moves[choice]
    end

    xx.each_index do |i|
      one_hit(prompt, moves[i], xx[i], xx.reverse[i])

      break if p1.fainted? || p2.fainted?
    end

    # Status conditions
    slowp ''
    [p1, p2].each do |pkm|
      pkm.turn
      fastp(pkm.health_bar)
    end
  end

  if p1.fainted? && p2.fainted?
    slowp "Both Pokemon fainted, but #{xx[0].name} fainted earlier, which means #{xx[1].name} is the winner!"
  else
    slowp "#{p1.fainted? ? p1.name : p2.name} fainted! #{p2.fainted? ? p1.name : p2.name} is the winner!".colorize(:light_green)
  end
  'SUCCESS'.colorize(:default)
end
