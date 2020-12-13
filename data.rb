AMM = 20

Recoil_10 = proc do |atta, _defe|
  atta.hit(10)
  slowp("#{atta.name} is hurt by the recoil!")
end

Recoil_20 = proc do |atta, _defe|
  atta.hit(20)
  slowp("#{atta.name} is hurt by the recoil!")
end

Recoil_40 = proc do |atta, _defe|
  atta.hit(40)
  slowp("#{atta.name} is harshly damaged by the recoil!")
end

Lower_attack_2 = proc do |_atta, defe|
  if defe.attack <= 0
  else
    defe.attack -= AMM * 2
    defe.attack = [0, defe.attack].max
    slowp("#{defe.name}'s Attack harshly fell!")
  end
end

Lower_defense_2 = proc do |_atta, defe|
  if defe.defense <= 0
  else
    defe.defense -= AMM * 2
    defe.defense = [0, defe.defense].max
    slowp("#{defe.name}'s Defense harshly fell!")
  end
end

Lower_attack_defense_2 = proc do |_atta, defe|
  if defe.attack <= 0
  else
    defe.attack -= AMM * 2
    defe.attack = [0, defe.attack].max
    slowp("#{defe.name}'s Attack harshly fell!")
  end

  if defe.defense <= 0
  else
    defe.defense -= AMM * 2
    defe.defense = [0, defe.defense].max
    slowp("#{defe.name}'s Defense harshly fell!")
  end
end

Lower_speed_1 = proc do |_atta, defe|
  if defe.speed <= 0
  else
    defe.speed -= AMM * 1
    defe.speed = [0, defe.speed].max
    slowp("#{defe.name}'s Speed harshly fell!")
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

Speed_Up_2 = proc do |atta, _defe|
  atta.speed += AMM * 1
  slowp("#{atta.name}'s Speed is incresed!")
end

require_relative 'move_data'

require_relative 'pokemon_data'

INTERVAL = 0.04
