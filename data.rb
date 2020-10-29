POKEMONS = {
  pikachu: [
    'Pikachu', 90, %w[Electric], [
      ['Thunder', 40, 'Electric'],
      ['Volt Tackle', 25, 'Electric']
    ],
    { Electric: 0.5,
      Ground: 2,
      Flying: 0.5,
      Steel: 0.5 }
  ],

  alolan_raichu: [
    'Raichu', 120, %w[Electric Psychic], [
      ['Electro Ball', 45, 'Electric'],
      ['Iron Tail', 35, 'Steel']
    ],
    { Electric: 0.5,
      Fighting: 0.5,
      Ground: 2,
      Flying: 0.5,
      Psychic: 0.5,
      Bug: 2,
      Ghost: 2,
      Dark: 2,
      Steel: 0.5 }
  ],

  lapras: [
    'Lapras', 140, %w[Water Ice], [
      ['Ice Beam', 30, 'Ice'],
      ['Hydro Pump', 45, 'Water']
    ],
    { Water: 0,
      Electric: 2,
      Grass: 2,
      Ice: 0.25,
      Fighting: 2,
      Rock: 2 }
  ]
}.freeze

INTERVAL = 0.04
