class Pokemon
  attr_accessor :name, :hp, :max_hp, :type, :moves, :type_defence,
                :attack, :defense, :speed, :poisoned,
                :dynamaxed

  def initialize(name, hp, type, moves, type_defense, attack, defense, speed)
    @name = name
    @hp = hp
    @max_hp = hp
    @type = type
    @moves = moves
    @type_defense = type_defense
    @attack = attack
    @defense = defense
    @speed = speed
    @poisoned = false
    @dynamaxed = false
  end

  def stat
    "#{@name} | #{@type.stat}"
  end

  # Prints Health Bar Beautifully
  def health_bar
    x = (@hp.to_f / @max_hp.to_f)
    bar = 30
    a = (x * bar).round
    a = a < 0 ? 0 : a
    b = bar - a
    ("[#{@name}]  |" + '=' * a + '-' * b + '|').colorize(:light_red)
  end

  def real_hp
    @hp < 0 ? 0 : @hp
  end

  def hit(amount)
    @hp -= amount
  end

  def hit_by_move(move)
    @hp -= move.attk
  end

  def factor(move)
    @type_defense.key?(move.type.type1.to_sym) ? @type_defense[move.type.type1.to_sym] : 1
  end

  def fainted?
    @hp <= 0
  end

  def calc_dmg(p1, move, factor)
    (move.attk * factor * (1 + p1.attack.to_f / 450.0) * (1 - @defense.to_f / 450.0)).round
  end

  def dynamax
    @dynamaxed = 3
    @hp *= 2
    @max_hp *= 2
    slowp("#{@name} is dynamaxed!".colorize(:red))
  end

  def turn
    if @poisoned
      slowp("#{@name} is hurt by the poison!")
      hit(10)
    end

    if @dynamaxed != false && @dynamaxed != true
      @dynamaxed -= 1
      if @dynamaxed == 0
        @dynamaxed = true
        @hp /= 2
        @max_hp /= 2
        @hp = 1 if @hp == 0
        slowp("#{@name} returned to normal!".colorize(:red))
      end
    end
  end
end
