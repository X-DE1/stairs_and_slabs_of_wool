
local S = minetest.get_translator("stairs_and_slabs_of_wool")

local dyes = dye.dyes

for i = 1, #dyes do

	local name, desc = unpack(dyes[i])

	local color_group = "color_" .. name

	stairs.register_stair_and_slab(
		name .. "_wool",
		"wool:" .. name,
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 3,
		flammable = 3, wool = 1, [color_group] = 1},
		{"wool_" .. name .. ".png"},
		S(desc .. " Wool " .. "Stair"),
		S(desc .. " Wool " .. "Slab"),
		default.node_sound_defaults(),
		false,
		S("Inner " .. desc .. " Wool " .. "Stair"),
		S("Outer " .. desc .. " Wool " .. "Stair")
	)

end
