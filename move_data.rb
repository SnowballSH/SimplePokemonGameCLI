MOVES = {
  # Normal
  QuickAttack: ['Quick Attack', 25, 'Normal'],
  Slam: ['Slam', 40, 'Normal'],
  BodySlam: ['Body Slam', 50, 'Normal', Recoil_10],
  DoubleEdge: ['Double Edge', 70, 'Normal', Recoil_20],
  Tackle: ['Tackle', 25, 'Normal'],
  Swift: ['Swift', 30, 'Normal'],
  # Water
  WaterPulse: ['Water Pulse', 30, 'Water'],
  HydroPump: ['Hydro Pump', 55, 'Water'],
  Surf: ['Surf', 45, 'Water'],
  # Fire
  Ember: ['Ember', 20, 'Fire'],
  FireFang: ['Fire Fang', 35, 'Fire', Lower_defense_2],
  # Grass
  LeafBlade: ['Leaf Blade', 45, 'Grass'],
  # Electric
  Thunderbolt: ['Thunderbolt', 45, 'Electric'],
  Thunder: ['Thunder', 55, 'Electric'],
  Spark: ['Spark', 30, 'Electric'],
  ThunderFang: ['Thunder Fang', 35, 'Electric', Lower_defense_2],
  # Steel
  IronTail: ['Iron Tail', 40, 'Steel'],
  # Fighting
  AuraSphere: ['Aura Sphere', 40, 'Fighting'],
  # Flying
  SkyAttack: ['Sky Attack', 70, 'Flying', Recoil_20],
  AirSlash: ['Air Slash', 35, 'Flying'],
  BraveBird: ['Brave Bird', 65, 'Flying', Recoil_20],
  # Psychic
  Psychic: ['Psychic', 45, 'Psychic'],
  ZenHeadbutt: ['Zen Headbutt', 40, 'Psychic'],
  # Ground
  Dig: ['Dig', 40, 'Ground'],
  Earthquake: ['Earthquake', 55, 'Ground'],
  # Rock
  StoneEdge: ['Stone Edge', 50, 'Rock'],
  # Ice
  IceBeam: ['Ice Beam', 45, 'Ice'],
  # Dragon
  DragonBreath: ['Dragon Breath', 35, 'Dragon'],
  DragonPulse: ['Dragon Pulse', 45, 'Dragon'],
  CoreEnforcer: ['Core Enforcer', 65, 'Dragon'],
  # Poison
  Acid: ['Acid', 30, 'Poison'],
  ShellSideArm: ['Shell Side Arm', 45, 'Poison', Make_poison_33],
  Smog: ['Smog', 20, 'Poison', Make_poison_50],
  # Fairy
  Charm: ['Charm', 0, 'Fairy', Lower_attack_defense_2],
  # Dark
  Bite: ['Bite', 30, 'Dark', Lower_defense_2],
  Crunch: ['Crunch', 40, 'Dark'],
  # Ghost
  PhantomForce: ['Phantom Force', 45, 'Ghost'],
  SpiritShackle: ['Spirit Shackle', 40, 'Ghost', Lower_speed_1],

  # DX
  MaxElectric: ['Max Lightning', 85, 'Electric'],
  MaxFire: ['Max Flare', 85, 'Fire'],
  MaxWater: ['Max Geyser', 85, 'Water'],
  MaxGrass: ['Max Overgrowth', 85, 'Grass'],
  MaxFlying: ['Max Airsteam', 80, 'Flying', Speed_Up_2],
  MaxNormal: ['Max Strike', 80, 'Normal'],
  MaxFighting: ['Max Knunkle', 85, 'Fighting'],
  MaxSteel: ['Max SteelSpike', 85, 'Steel'],
  MaxPoison: ['Max Ooze', 65, 'Poison', Make_poison_50],
  MaxPsychic: ['Max Mindstorm', 85, 'Psychic'],
  MaxStone: ['Max Rockfall', 85, 'Rock'],
  MaxDragon: ['Max Wyrmwind', 75, 'Dragon', Lower_attack_defense_2],
  MaxDark: ['Max Darkness', 85, 'Dark'],
  MaxIce: ['Max Hailstorm', 85, 'Ice'],
  MaxGhost: ['Max Phantom', 75, 'Ghost', Lower_attack_defense_2],

  # GX
  GMaxPikachu: ['G-Max Volt Crash', 100, 'Electric'],
  GMaxEevee: ['G-Max Cuddle', 100, 'Normal']
}.freeze
