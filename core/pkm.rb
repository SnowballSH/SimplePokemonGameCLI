class Pokemon
  attr_accessor :name, :hp, :type, :moves, :type_defence

  def initialize(name, hp, type, moves, type_defence)
    @name = name
    @hp = hp
    @type = type
    @moves = moves
    @type_defence = type_defence
  end

  def stat
    "#{@name} | #{@type.stat}"
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
    @type_defence.key?(move.type.type1.to_sym) ? @type_defence[move.type.type1.to_sym] : 1
  end

  def fainted?
    @hp <= 0
  end
end
