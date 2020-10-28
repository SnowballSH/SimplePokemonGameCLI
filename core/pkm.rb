class Pokemon
  attr_accessor :name, :hp, :type, :moves

  def initialize(name, hp, type, moves)
    @name = name
    @hp = hp
    @type = type
    @moves = moves
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

  def fainted?
    @hp <= 0
  end
end
