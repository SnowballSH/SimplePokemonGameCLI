class Pokemon
  attr_accessor :name, :hp, :max_hp, :type, :moves, :type_defence, :attack, :defense, :speed

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
    (move.attk * factor * (1 + p1.attack.to_f / 500.0) * (1 - @defense.to_f / 500.0)).round
  end
end
