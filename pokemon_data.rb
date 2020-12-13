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

  eevee: [
    'Eevee', 220, %w[Normal], %i[
      Tackle
      Swift
      DoubleEdge
      Bite
    ],
    {
      Fighting: 2,
      Ghost: 0
    },
    103, 94, 103
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
  ].freeze,

  togekiss: [
    'Togekiss', 280, %w[Fairy Flying], %i[
      AirSlash
      AuraSphere
      Charm
      SkyAttack
    ],
    {
      Electric: 2,
      Grass: 0.5,
      Ice: 2,
      Fighting: 0.25,
      Poison: 2,
      Ground: 0,
      Bug: 0.25,
      Rock: 2,
      Dragon: 0,
      Dark: 0.5,
      Steel: 2
    },
    200, 175, 148
  ].freeze,

  zygarde: [
    'Zygarde', 326, %w[Dragon Ground], %i[
      Bite
      DragonPulse
      CoreEnforcer
      Earthquake
    ],
    {
      Fire: 0.5,
      Electric: 0,
      Ice: 4,
      Poison: 0.5,
      Rock: 0.5,
      Dragon: 2,
      Fairy: 2
    },
    184, 222, 175
  ].freeze,

  decidueye: [
    'Decidueye', 266, %w[Grass Ghost], %i[
      PhantomForce
      LeafBlade
      BraveBird
      SpiritShackle
    ],
    {
      Normal: 0,
      Fire: 2,
      Water: 0.5,
      Electric: 0.5,
      Grass: 0.5,
      Fighting: 0,
      Ground: 0.5,
      Flying: 2,
      Ghost: 2,
      Dark: 2
    },
    196, 139, 130
  ].freeze
}.freeze
