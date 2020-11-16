Recoil_10 = proc do |atta, _defe|
  atta.hit(10)
  slowp("#{atta.name} is hurt by the recoil!")
end

Recoil_20 = proc do |atta, _defe|
  atta.hit(20)
  slowp("#{atta.name} is hurt by the recoil!")
end

Lower_attack_2 = proc do |_atta, defe|
  if defe.attack <= 0
    slowp('But it failed...')
  else
    defe.attack -= 30 * 2
    defe.attack = defe.attack < 0 ? 0 : defe.attack
    slowp("#{defe.name}'s Attack stat is lowered!")
  end
end

Make_poison_50 = proc do |_atta, defe|
  if rand(2) == 0
    defe.poisoned = true
    slowp("#{defe.name} is poisoned!")
  end
end

Make_poison_33 = proc do |_atta, defe|
  if rand(3) == 0
    defe.poisoned = true
    slowp("#{defe.name} is poisoned!")
  end
end

require_relative 'move_data'

require_relative 'pokemon_data'

INTERVAL = 0.04
