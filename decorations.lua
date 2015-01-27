-- Almost copy from minetest_game default/mapgen.lua

-- Flowers

minetest.register_decoration({
  deco_type = "simple",
  place_on = {"default:dirt_with_grass"},
  sidelen = 16,
  noise_params = {
    offset = -0.015,
    scale = 0.03,
    spread = {x=100, y=100, z=100},
    seed = 436,
    octaves = 3,
    persist = 0.6
  },
  biomes = {"prairie", "meadow"},
  y_min = -32000,
  y_max = 32000,
  decoration = "flowers:rose",
})

minetest.register_decoration({
  deco_type = "simple",
  place_on = {"default:dirt_with_grass"},
  sidelen = 16,
  noise_params = {
    offset = -0.015,
    scale = 0.03,
    spread = {x=100, y=100, z=100},
    seed = 19822,
    octaves = 3,
    persist = 0.6
  },
  biomes = {"prairie", "meadow"},
  y_min = -32000,
  y_max = 32000,
  decoration = "flowers:tulip",
})

minetest.register_decoration({
  deco_type = "simple",
  place_on = {"default:dirt_with_grass"},
  sidelen = 16,
  noise_params = {
    offset = -0.015,
    scale = 0.03,
    spread = {x=100, y=100, z=100},
    seed = 1220999,
    octaves = 3,
    persist = 0.6
  },
  biomes = {"prairie", "meadow"},
  y_min = -32000,
  y_max = 32000,
  decoration = "flowers:dandelion_yellow",
})

minetest.register_decoration({
  deco_type = "simple",
  place_on = {"default:dirt_with_grass"},
  sidelen = 16,
  noise_params = {
    offset = -0.015,
    scale = 0.03,
    spread = {x=100, y=100, z=100},
    seed = 36662,
    octaves = 3,
    persist = 0.6
  },
  biomes = {"prairie", "meadow"},
  y_min = -32000,
  y_max = 32000,
  decoration = "flowers:geranium",
})

minetest.register_decoration({
  deco_type = "simple",
  place_on = {"default:dirt_with_grass"},
  sidelen = 16,
  noise_params = {
    offset = -0.015,
    scale = 0.03,
    spread = {x=100, y=100, z=100},
    seed = 1133,
    octaves = 3,
    persist = 0.6
  },
  biomes = {"prairie", "meadow"},
  y_min = -32000,
  y_max = 32000,
  decoration = "flowers:viola",
})

minetest.register_decoration({
  deco_type = "simple",
  place_on = {"default:dirt_with_grass"},
  sidelen = 16,
  noise_params = {
    offset = -0.015,
    scale = 0.03,
    spread = {x=100, y=100, z=100},
    seed = 73133,
    octaves = 3,
    persist = 0.6
  },
  biomes = {"prairie", "meadow"},
  y_min = -32000,
  y_max = 32000,
  decoration = "flowers:dandelion_white",
})

-- Grasses

minetest.register_decoration({
  deco_type = "simple",
  place_on = {"default:dirt_with_grass"},
  sidelen = 16,
  noise_params = {
    offset = 0.04,
    scale = 0.08,
    spread = {x=100, y=100, z=100},
    seed = 66440,
    octaves = 3,
    persist = 0.6
  },
  biomes = {"prairie", "meadow"},
  y_min = -32000,
  y_max = 32000,
  decoration = "default:grass_1",
})

minetest.register_decoration({
  deco_type = "simple",
  place_on = {"default:dirt_with_grass"},
  sidelen = 16,
  noise_params = {
    offset = 0.02,
    scale = 0.08,
    spread = {x=100, y=100, z=100},
    seed = 66440,
    octaves = 3,
    persist = 0.6
  },
  biomes = {"prairie", "meadow"},
  y_min = -32000,
  y_max = 32000,
  decoration = "default:grass_2",
})

minetest.register_decoration({
  deco_type = "simple",
  place_on = {"default:dirt_with_grass"},
  sidelen = 16,
  noise_params = {
    offset = 0,
    scale = 0.08,
    spread = {x=100, y=100, z=100},
    seed = 66440,
    octaves = 3,
    persist = 0.6
  },
  biomes = {"prairie", "meadow"},
  y_min = -32000,
  y_max = 32000,
  decoration = "default:grass_3",
})

minetest.register_decoration({
  deco_type = "simple",
  place_on = {"default:dirt_with_grass"},
  sidelen = 16,
  noise_params = {
    offset = -0.02,
    scale = 0.08,
    spread = {x=100, y=100, z=100},
    seed = 66440,
    octaves = 3,
    persist = 0.6
  },
  biomes = {"prairie", "meadow"},
  y_min = -32000,
  y_max = 32000,
  decoration = "default:grass_4",
})

minetest.register_decoration({
  deco_type = "simple",
  place_on = {"default:dirt_with_grass"},
  sidelen = 16,
  noise_params = {
    offset = -0.04,
    scale = 0.08,
    spread = {x=100, y=100, z=100},
    seed = 66440,
    octaves = 3,
    persist = 0.6
  },
  biomes = {"prairie", "meadow"},
  y_min = -32000,
  y_max = 32000,
  decoration = "default:grass_5",
})

minetest.register_decoration({
  deco_type = "simple",
  place_on = "default:dirt_with_grass",
  sidelen = 16,
  fill_ratio = 0.17,
  biomes = {"jungle"},
  decoration = {"default:junglegrass"},
})

-- Saplings
simplev7.sapling = {}
simplev7.sapling.jungle = minetest.register_decoration({
  deco_type = "simple",
  place_on = "default:dirt_with_grass",
  sidelen = 16,
  fill_ratio = 0.057,
  biomes = {"jungle"},
  decoration = {"default:junglesapling"}
})


