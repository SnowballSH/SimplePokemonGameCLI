POKEMONS = {
  pikachu: [
    'Pikachu', 180, %w[Electric], [
      ['Thunderbolt', 45, 'Electric'],
      ['Iron Tail', 40, 'Steel'],
      ['Spark', 30, 'Electric'],
      ['Quick Attack', 25, 'Normal']
    ],
    {
      Electric: 0.5,
      Ground: 2,
      Flying: 0.5,
      Steel: 0.5
    },
    103, 76
  ].freeze,

  alolan_raichu: [
    'Raichu', 230, %w[Electric Psychic], [
      ['Quick Attack', 30, 'Normal'],
      ['Psychic', 45, 'Psychic'],
      ['Slam', 40, 'Normal'],
      ['Thunder', 55, 'Electric']
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
    166, 103
  ].freeze,

  lapras: [
    'Lapras', 370, %w[Water Ice], [
      ['Ice Beam', 45, 'Ice'],
      ['Water Pulse', 30, 'Water'],
      ['Body Slam', 40, 'Normal'],
      ['Hydro Pump', 55, 'Water']
    ],
    {
      Water: 0,
      Electric: 2,
      Grass: 2,
      Ice: 0.25,
      Fighting: 2,
      Rock: 2
    },
    157, 148
  ].freeze,

  onix: [
    'Onix', 180, %w[Rock Ground], [
      ['Tackle', 20, 'Normal'],
      ['Dragon Breath', 30, 'Dragon'],
      ['Dig', 40, 'Ground'],
      ['Stone Edge', 50, 'Rock']
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
    85, 352
  ].freeze
}.freeze

INTERVAL = 0.04
