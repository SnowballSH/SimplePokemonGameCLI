Recoil_10 = proc do |atta, _defe|
  atta.hit(10)
  slowp("#{atta.name} is hurt by the recoil!")
end

MOVES = {
  # Normal
  QuickAttack: ['Quick Attack', 25, 'Normal'],
  Slam: ['Slam', 40, 'Normal'],
  BodySlam: ['Body Slam', 50, 'Normal', Recoil_10],
  Tackle: ['Tackle', 25, 'Normal'],
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
  ShellSideArm: ['Shell Side Arm', 45, 'Poison']
}.freeze

POKEMONS = {
  pikachu: [
    'Pikachu', 180, %w[Electric], %i[
      Thunderbolt
      IronTail
      Spark
      QuickAttack
    ],
    {
      Electric: 0.5,
      Ground: 2,
      Flying: 0.5,
      Steel: 0.5
    },
    103, 76, 166
  ].freeze,

  alolan_raichu: [
    'Raichu', 230, %w[Electric Psychic], %i[
      QuickAttack
      Psychic
      Slam
      Thunder
    ],
    {
      Electric: 0.5,
      Fighting: 0.5,
      Ground: 2,
      Flying: 0.5,
      Psychic: 0.5,
      Bug: 2,
      Ghost: 2,
      Dark: 2,
      Steel: 0.5
    },
    166, 103, 202
  ].freeze,

  lapras: [
    'Lapras', 370, %w[Water Ice], %i[
      IceBeam
      WaterPulse
      BodySlam
      HydroPump
    ],
    {
      Water: 0,
      Electric: 2,
      Grass: 2,
      Ice: 0.25,
      Fighting: 2,
      Rock: 2
    },
    157, 148, 112
  ].freeze,

  onix: [
    'Onix', 180, %w[Rock Ground], %i[
      Tackle
      DragonBreath
      Dig
      StoneEdge
    ],
    {
      Normal: 0.5,
      Fire: 0.5,
      Water: 4,
      Electric: 0,
      Grass: 4,
      Ice: 2,
      Fighting: 2,
      Poison: 0.25,
      Ground: 2,
      Flying: 0.5,
      Rock: 0.5,
      Steel: 2
    },
    85, 352, 130
  ].freeze,

  galarian_slowbro: [
    'Slowbro', 300, %w[Poison Psychic], %i[
      Acid
      ZenHeadbutt
      Surf
      ShellSideArm
    ],
    {
      Grass: 0.5,
      Fighting: 0.25,
      Poison: 0.5,
      Ground: 2,
      Ghost: 2,
      Dark: 2,
      Fairy: 0.5
    },
    184, 175, 58
  ].freeze
}.freeze

INTERVAL = 0.04
