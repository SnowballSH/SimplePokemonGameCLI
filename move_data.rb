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
  # Electric
  Thunderbolt: ['Thunderbolt', 45, 'Electric'],
  Thunder: ['Thunder', 55, 'Electric'],
  Spark: ['Spark', 30, 'Electric'],
  # Steel
  IronTail: ['Iron Tail', 40, 'Steel'],
  # Fighting
  AuraSphere: ['Aura Sphere', 40, 'Fighting'],
  # Flying
  SkyAttack: ['Sky Attack', 70, 'Flying', Recoil_20],
  AirSlash: ['Air Slash', 37, 'Flying'],
  # Psychic
  Psychic: ['Psychic', 45, 'Psychic'],
  ZenHeadbutt: ['Zen Headbutt', 40, 'Psychic'],
  # Ground
  Dig: ['Dig', 40, 'Ground'],
  # Rock
  StoneEdge: ['Stone Edge', 50, 'Rock'],
  # Ice
  IceBeam: ['Ice Beam', 45, 'Ice'],
  # Dragon
  DragonBreath: ['Dragon Breath', 30, 'Dragon'],
  # Poison
  Acid: ['Acid', 30, 'Poison'],
  ShellSideArm: ['Shell Side Arm', 45, 'Poison', Make_poison_33],
  # Fairy
  Charm: ['Charm', 0, 'Fairy', Lower_attack_2],
  # Dark
  Bite: ['Bite', 60, 'Dark'],

  # DX
  MaxElectric: ['Max Lightning', 85, 'Electric'],
  MaxFire: ['Max Flare', 85, 'Fire'],
  MaxFlying: ['Max Airsteam', 85, 'Flying'],
  MaxNormal: ['Max Strike', 80, 'Normal'],
  MaxFighting: ['Max Knunkle', 85, 'Fighting'],
  MaxSteel: ['Max SteelSpike', 85, 'Steel'],
  MaxPoison: ['Max Ooze', 65, 'Poison', Make_poison_50],
  MaxPsychic: ['Max Mindstorm', 85, 'Psychic'],
  MaxStone: ['Max Rockfall', 85, 'Rock'],

  # GX
  GMaxPikachu: ['G-Max Volt Crash', 100, 'Electric'],
  GMaxEevee: ['G-Max Cuddle', 100, 'Normal']
}.freeze
