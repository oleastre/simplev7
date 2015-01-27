minetest.clear_registered_biomes()

minetest.register_biome({
  name = "forest",
  node_top = "default:dirt_with_grass",
  depth_top = 1,
  node_filler = "default:dirt",
  depth_filler = 3,
  y_min = 2,
  y_max =40,
  heat_point = 50,
  humidity_point = 80,
})

minetest.register_biome({
  name = "meadow",
  node_top = "default:dirt_with_grass",
  depth_top = 1,
  node_filler = "default:dirt",
  depth_filler = 3,
  y_min = 2,
  y_max = 40,
  heat_point = 50,
  humidity_point = 30,
})

minetest.register_biome({
  name = "beach",
  node_top = "default:sand",
  depth_top = 2,
  y_min = -500,
  y_max = 2,
  heat_point = 40,
  humidity_point = 50,
})

minetest.register_biome({
  name = "tropical_beach",
  node_top = "default:sand",
  depth_top = 5,
  y_min = -500,
  y_max = 3,
  heat_point = 80.0,
  humidity_point = 50,
})

minetest.register_biome({
  name = "jungle",
  node_top = "default:dirt_with_grass",
  depth_top = 1,
  node_filler = "default:dirt",
  depth_filler = 3,
  y_min = 2,
  y_max = 40,
  heat_point = 80,
  humidity_point = 80,
})

minetest.register_biome({
  name = "desert",
  node_top = "default:desert_sand",
  depth_top = 3,
  node_filler = "default:desert_stone",
  depth_filler = 57,
  y_min = 2,
  y_max = 40,
  heat_point = 80,
  humidity_point = 20,
})

minetest.register_biome({
  name = "mountain",
  node_top = "default:snowblock",
  depth_top = 1,
  node_filler = "default:dirt_with_snow",
  depth_filler = 1,
  y_min = 41,
  y_max = 80,
})

minetest.register_biome({
  name = "alpine",
  node_top = "default:snowblock",
  depth_top = 1,
  node_filler = "default:dirt_with_snow",
  depth_filler = 1,
  y_min = 81,
  y_max = 300,
})

minetest.register_biome({
  name = "dune",
  node_top = "default:sand",
  depth_top = 3,
  node_filler = "default:dirt",
  depth_filler = 2,
  y_min = 1,
  y_max = 30,
  heat_point = 10,
  humidity_point = 10,
})

minetest.register_biome({
  name = "prairie",
  node_top = "default:dirt_with_grass",
  depth_top = 1,
  node_filler = "default:dirt",
  depth_filler = 4,
  y_min = 10,
  y_max = 40,
  heat_point = 40,
  humidity_point = 20,
})

minetest.register_biome({
  name = "papyrus",
  node_top = "default:dirt_with_grass",
  depth_top = 1,
  node_filler = "default:dirt",
  depth_filler = 2,
  y_min = 1,
  y_max = 1,
  heat_point = 60,
  humidity_point = 50,
})


function simplev7.on_generated(minp, maxp, seed)
  local gentable = minetest.get_mapgen_object("gennotify")
  local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
  
  local area = VoxelArea:new{MinEdge=emin, MaxEdge=emax}
  local data = vm:get_data()
  
  local function generate_trees(id, generator)
    local decorationId = "decoration#" .. id
    if(gentable[decorationId]) then
      for _, pos in ipairs(gentable[decorationId]) do
        generator(data, area, {x=pos.x, y=pos.y+1, z=pos.z})
      end
    end
  end

  generate_trees(simplev7.sapling.forest, simplev7.grow_tree)
  generate_trees(simplev7.sapling.meadow, simplev7.grow_tree)
  generate_trees(simplev7.sapling.jungle, simplev7.grow_jungle_tree)

  vm:set_data(data)
  vm:write_to_map()
  vm:update_map()
end

minetest.register_on_generated(simplev7.on_generated)
--minetest.register_decoration({
--  deco_type = "schematic",
--  place_on = "default:dirt_with_grass",
--  sidelen = 16,
--  fill_ratio = 0.037,
--  biomes = {"forest"},
--  flags = "place_center_x, place_center_z",
--  schematic = minetest.get_modpath("simplev7").."/schematics/appletree.mts",
--})

--minetest.register_decoration({
--  deco_type = "schematic",
--  place_on = {"default:dirt_with_grass", "default:dirt"},
--  sidelen = 80,
--  fill_ratio = 0.003,
--  biomes = {"meadow"},
--  flags = "place_center_x, place_center_z",
--  schematic = minetest.get_modpath("simplev7").."/schematics/appletree.mts",
--})

--minetest.register_decoration({
--  deco_type = "schematic",
--  place_on = "default:dirt_with_grass",
--  sidelen = 16,
--  fill_ratio = 0.057,
--  biomes = {"jungle"},
--  flags = "place_center_x, place_center_z",
--  schematic = minetest.get_modpath("simplev7").."/schematics/jungletree.mts",
--})


--minetest.register_decoration({
--  deco_type = "schematic",
--  place_on = "default:snowblock",
--  sidelen = 16,
--  fill_ratio = 0.047,
--  flags = "place_center_x, place_center_z",
--  biomes = {"mountain"},
--  schematic = minetest.get_modpath("simplev7").."/schematics/snowtree.mts",
--})

--minetest.register_decoration({
--  deco_type = "schematic",
--  place_on = "default:dirt_with_grass",
--  sidelen = 16,
--  fill_ratio = 0.17,
--  biomes = {"papyrus"},
--  schematic = minetest.get_modpath("simplev7").."/schematics/papyrus.mts",
--})

--minetest.register_decoration({
--  deco_type = "schematic",
--  place_on = "default:desert_sand",
--  sidelen = 64,
--  noise_params = {offset = -0.005, scale = 0.03, spread = {x = 320, y = 320, z = 320}, seed = 230, octaves = 3, persist = 0.6},
--  biomes = {"desert"},
--  schematic = minetest.get_modpath("simplev7").."/schematics/cactus.mts",
--})

--minetest.register_decoration({
--  deco_type = "schematic",
--  place_on = "default:dirt_with_grass",
--  sidelen = 16,
--  fill_ratio = 0.17,
--  biomes = {"papyrus"},
--  schematic = minetest.get_modpath("simplev7").."/schematics/papyrus.mts",
--})


