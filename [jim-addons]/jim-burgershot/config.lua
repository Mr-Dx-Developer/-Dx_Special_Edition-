print("^2Jim^7-^2Burgershot ^7v^42^7.^44^7.^49 ^7- ^2BurgerShot Job Script by ^1Jimathy^7")

Config = {
	Debug = false,  -- True to show debug boxes and messages

	--https://i.imgur.com/NIFOsYf.jpeg

	Lan = "en", -- Pick your language here
	img = "ps-inventory/html/images/", -- Change this to your inventory's name and image folder (SET TO "" IF YOU HAVE DOUBLE IMAGES)

	Core = "qb-core", -- set this to your core folder
	Inv = "qb", -- set to "ox" if using OX Inventory
	Menu = "qb", -- set to "ox" if using OX Lib Context
	Notify = "qb",
	ProgressBar = "qb", -- set to "ox" if using ox_lib progressbar

	MultiCraft = true,
	MultiCraftAmounts = { [1], [5], [10] },

	JimConsumables = true, -- Enable this to disable this scripts control of food/drink items
	JimShop = true, 		-- Enable this to use jim-shops for buying ingredients


	--Simple Toy Reward Support
	RewardItem = "", --Set this to the name of an item eg "bento"
	RewardPool = { -- Set this to the list of items to be given out as random prizes when the item is used - can be more or less items in the list
		"",
		"",
		"",
		"",
	},

	Items = {
		label = "Storage",
		slots = 9,
		items = {
			{ name = 'burgerpatty', price = 6, amount = 200, info = {}, type = 'item', slot = 1, },
			{ name = 'potato', price = 3, amount = 200, info = {}, type = 'item', slot = 2, },
			{ name = 'onion', price = 3, amount = 200, info = {}, type = 'item', slot = 3, },
			{ name = 'frozennugget', price = 6, amount = 200, info = {}, type = 'item', slot = 4, },
			{ name = 'milk', price = 3, amount = 200, info = {}, type = 'item', slot = 5, },
			{ name = 'icecream', price = 6, amount = 200, info = {}, type = 'item', slot = 6, },
			{ name = 'burgerbun', price = 4, amount = 200, info = {}, type = 'item', slot = 7, },
			{ name = 'cheddar', price = 3, amount = 200, info = {}, type = 'item', slot = 8, },
			{ name = 'lettuce', price = 2, amount = 200, info = {}, type = 'item', slot = 9, },
		},
	},
	Locations = {
		{ 	-- Gabz Location
			zoneEnable = true,
			job = "burgershot",
			label = "Burger Shot",
			autoClock = { enter = true, exit = true, },
			zones = {
				vec2(-1153.6727294922, -892.29083251953),
				vec2(-1174.5604248047, -860.27191162109),
				vec2(-1217.4858398438, -889.26123046875),
				vec2(-1196.4073486328, -917.87731933594)
			},
			blip = vec3(-1186.11, -885.86, 13.97), blipcolor = 5, blipsprite = 381, blipscale = 0.9, blipdisp = 6, blipcat = nil,
			garage = { spawn = vec4(-1180.86, -903.18, 13.51, 299.85),
				out = vec4(-1183.59, -908.41, 13.37, 335.18),
				list = { "stalion2", "burrito3", }
			},
			MLO = "RZ",   --use "Gabz" if you are using Smallo's burgershot MLO
							--use "LP" if you are using Smallo's burgershot MLO
							--use "RZ" if you are using NoPixels Paid burgershot MLO
							--use "GN" if you are using GNMods burgershot MLO
							--use "NP" if you are using NoPixels Paid burgershot MLO
		},
		{ 	-- San Andreas Ave (Default location)
			zoneEnable = false,
			job = "burgershot",
			label = "Burger Shot",
			autoClock = { enter = false, exit = true, },
			zones = {
				vec2(-1153.6727294922, -892.29083251953),
				vec2(-1174.5604248047, -860.27191162109),
				vec2(-1217.4858398438, -889.26123046875),
				vec2(-1196.4073486328, -917.87731933594)
			},
			blip = vec3(-1186.11, -885.86, 13.97), blipcolor = 5, blipsprite = 106, blipscale = 0.7, blipdisp = 6, blipcat = nil,
			garage = { spawn = vec4(-1180.86, -903.18, 13.51, 299.85),
				out = vec4(-1183.59, -908.41, 13.37, 335.18),
				list = { "stalion2", "burrito3", }
			},
			MLO = "NP",
		},
		{ -- Mirror Park (GNMODS)
			zoneEnable = false,
			job = "burgershot",
			label = "Burger Shot (Mirror Park)",
			autoClock = { enter = false, exit = true, },
			zones = {
				vec2(1222.93, -369.51),
				vec2(1225.09, -326.21),
				vec2(1269.28, -332.18),
				vec2(1283.12, -365.41),
				vec2(1263.98, -389.72),
				vec2(1248.82, -379.71)
			},
			blip = vec3(1243.58, -359.92, 69.21), blipcolor = 5, blipsprite = 106, blipscale = 0.7, blipdisp = 6, blipcat = nil,
			garage = { spawn = vec4(1235.45, -337.55, 68.89, 89.71),
			out = vec4(1233.54, -333.55, 69.21, 181.12),
				list = { "stalion2", "burrito3", } },
		},
		{ -- Sandy Shores (GNMODS)
			zoneEnable = false,
			job = "burgershot",
			label = "Burger Shot (Sandy Shores)",
			autoClock = { enter = false, exit = true, },
			zones = {
				vec2(1553.31, 3754.15),
				vec2(1575.3, 3723.34),
				vec2(1614.84, 3751.35),
				vec2(1591.73, 3784.05)
			},
			blip = vec3(1584.24, 3751.4, 34.43), blipcolor = 5, blipsprite = 106, blipscale = 0.7, blipdisp = 6, blipcat = nil,
			garage = { spawn = vec4(1591.33, 3773.97, 34.25, 37.35),
			out = vec4(1588.47, 3772.8, 34.44, 303.09),
				list = { "stalion2", "burrito3", } },
		},
	},
}
Crafting = {
	ChopBoard = {
		{ ['slicedonion'] = { ['onion'] = 1, },
			['amount'] = 3 },
		{ ['slicedpotato'] = { ['potato'] = 1, },
			['amount'] = 3 },
		{ ['chickenwrap'] = { ['shotnuggets'] = 1, ['lettuce'] = 1, } },
		{ ['cheesewrap'] = { ['cheddar'] = 1, ['lettuce'] = 1, } },
	},
	Fryer = {
		{ ['shotfries'] = { ['slicedpotato'] = 1, } },
		{ ['shotrings'] = { ['slicedonion'] = 1, } },
		{ ['shotnuggets'] = { ['frozennugget'] = 1, } },
	},
	Grill = {
		{ ['burgermeat'] = { ['burgerpatty'] = 1, } },
	},
	Prepare = {
		{ ['heartstopper'] = {
				['burgerbun'] = 1,
				['cheddar'] = 1,
				['lettuce'] = 1,
				['burgermeat'] = 1,
				['slicedonion'] = 1,
		} },
		{ ['bleeder'] = {
				['burgerbun'] = 1,
				['cheddar'] = 1,
				['lettuce'] = 1,
				['burgermeat'] = 1,
				['slicedonion'] = 1,
		} },
		{ ['torpedo'] = {
				['burgerbun'] = 1,
				['cheddar'] = 1,
				['lettuce'] = 1,
				['burgermeat'] = 1,
				['slicedonion'] = 1,
		} },
		{ ['meatfree'] = {
				['burgerbun'] = 1,
				['cheddar'] = 1,
				['lettuce'] = 1,
				['slicedonion'] = 1,
		} },
		{ ['moneyshot'] = {
				['burgerbun'] = 1,
				['cheddar'] = 1,
				['lettuce'] = 1,
				['burgermeat'] = 1,
				['slicedonion'] = 1,
		} },
	},
	Drink = {
		{ ['water_bottle'] = { } },
		{ ['bscoke'] = { } },
		{ ['bscoffee'] = { } },
		{ ['milkshake'] = { ['milk'] = 1, ['icecream'] = 1, } },
	},
	Donut = {
		{ ["rimjob"] = {} },
		{ ["creampie"] = {} },
	},
}

Loc = {}