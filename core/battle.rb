require_relative './pkm.rb'
require_relative './move.rb'

def one_hit(prompt, p1, p2, _l)
  choice = p1.moves.pretty_p prompt, p1.name
  move = p1.moves[choice]
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
    yy = [p2, p1].sort { |a, b| a.speed <=> b.speed }
    [xx, yy].each do |set|
      one_hit(prompt, *set, [p1, p2])

      if set == xx
        slowp ''
        [p1, p2].each do |pkm|
          fastp(pkm.health_bar)
        end
      end

      break if p1.fainted? || p2.fainted?
    end

    # Status conditions

    slowp ''
    [p1, p2].each do |pkm|
      if pkm.poisoned
        slowp "#{pkm.name} is hurt by the poison!"
        pkm.hit(10)
      end
      fastp(pkm.health_bar)
    end
  end
  slowp "#{p1.fainted? ? p1.name : p2.name} fainted! #{p2.fainted? ? p1.name : p2.name} is the winner!".colorize(:light_green)
  'SUCCESS'.colorize(:default)
end
