local Weapons = {}
ToString = {
	["453432689"] = "WEAPON_PISTOL",
	["3219281620"] = "WEAPON_PISTOL_MK2",
	["1593441988"] = "WEAPON_COMBATPISTOL",
	["2578377531"] = "WEAPON_PISTOL50",
	["3218215474"] = "WEAPON_SNSPISTOL",
	["2285322324"] = "WEAPON_SNSPISTOL_MK2",
	["3523564046"] = "WEAPON_HEAVYPISTOL",
	["137902532"] = "WEAPON_VINTAGEPISTOL",
	["3696079510"] = "WEAPON_MARKSMANPISTOL",
	["3249783761"] = "WEAPON_REVOLVER",
	["3415619887"] = "WEAPON_REVOLVER_MK2",
	["2548703416"] = "WEAPON_DOUBLEACTION",
	["584646201"] = "WEAPON_APPISTOL",
	["911657153"] = "WEAPON_STUNGUN",
	["1198879012"] = "WEAPON_FLAREGUN",

	["324215364"] = "WEAPON_MICROSMG",
	["3675956304"] = "WEAPON_MACHINEPISTOL",
	["3173288789"] = "WEAPON_MINISMG",
	["736523883"] = "WEAPON_SMG",
	["2024373456"] = "WEAPON_SMG_MK2",
	["4024951519"] = "WEAPON_ASSAULTSMG",
	["171789620"] = "WEAPON_COMBATPDW",
	["2634544996"] = "WEAPON_MG",
	["2144741730"] = "WEAPON_COMBATMG",
	["3686625920"] = "WEAPON_COMBATMG_MK2",
	["1627465347"] = "WEAPON_GUSENBERG",

	["3220176749"] = "WEAPON_ASSAULTRIFLE",
	["961495388"] = "WEAPON_ASSAULTRIFLE_MK2",
	["2210333304"] = "WEAPON_CARBINERIFLE",
	["4208062921"] = "WEAPON_CARBINERIFLE_MK2",
	["2937143193"] = "WEAPON_ADVANCEDRIFLE",
	["3231910285"] = "WEAPON_SPECIALCARBINE",
	["2526821735"] = "WEAPON_SPECIALCARBINE_MK2",
	["2132975508"] = "WEAPON_BULLPUPRIFLE",
	["2228681469"] = "WEAPON_BULLPUPRIFLE_MK2",
	["1649403952"] = "WEAPON_COMPACTRIFLE",

	["100416529"] = "WEAPON_SNIPERRIFLE",
	["177293209"] = "WEAPON_HEAVYSNIPER_MK2",
	["205991906"] = "WEAPON_HEAVYSNIPER",
	["3342088282"] = "WEAPON_MARKSMANRIFLE",
	["1785463520"] = "WEAPON_MARKSMANRIFLE_MK2",

	["2725352035"] = "WEAPON_UNARMED",
	["2578778090"] = "WEAPON_KNIFE",
	["1737195953"] = "WEAPON_NIGHTSTICK",
	["1317494643"] = "WEAPON_HAMMER",
	["2508868239"] = "WEAPON_BAT",
	["2227010557"] = "WEAPON_CROWBAR",
	["1141786504"] = "WEAPON_GOLFCLUB",
	["4192643659"] = "WEAPON_BOTTLE",
	["2460120199"] = "WEAPON_DAGGER",
	["4191993645"] = "WEAPON_HATCHET",
	["3638508604"] = "WEAPON_KNUCKLE",
	["3713923289"] = "WEAPON_MACHETE",
	["2343591895"] = "WEAPON_FLASHLIGHT",
	["3756226112"] = "WEAPON_SWITCHBLADE",
	["3441901897"] = "WEAPON_BATTLEAXE",
	["2484171525"] = "WEAPON_POOLCUE",
	["419712736"] = "WEAPON_WRENCH",

	["487013001"] = "WEAPON_PUMPSHOTGUN",
	["1432025498"] = "WEAPON_PUMPSHOTGUN_MK2",
	["2017895192"] = "WEAPON_SAWNOFFSHOTGUN",
	["2640438543"] = "WEAPON_BULLPUPSHOTGUN",
	["3800352039"] = "WEAPON_ASSAULTSHOTGUN",
	["984333226"] = "WEAPON_HEAVYSHOTGUN",
	["2828843422"] = "WEAPON_MUSKET",
	["4019527611"] = "WEAPON_DBSHOTGUN",
	["317205821"] = "WEAPON_AUTOSHOTGUN",

	["2726580491"] = "WEAPON_GRENADELAUNCHER",
	["2982836145"] = "WEAPON_RPG",
	["1119849093"] = "WEAPON_MINIGUN",
	["2138347493"] = "WEAPON_FIREWORK",
	["1834241177"] = "WEAPON_RAILGUN",
	["1672152130"] = "WEAPON_HOMINGLAUNCHER",
	["125959754"] = "WEAPON_COMPACTLAUNCHER",

	["2481070269"] = "WEAPON_GRENADE",
	["741814745"] = "WEAPON_STICKYBOMB",
	["2874559379"] = "WEAPON_PROXMINE",
	["3125143736"] = "WEAPON_PIPEBOMB",
	["4256991824"] = "WEAPON_SMOKEGRENADE",
	["2694266206"] = "WEAPON_BZGAS",
	["615608432"] = "WEAPON_MOLOTOV",
	["101631238"] = "WEAPON_FIREEXTINGUISHER",
	["883325847"] = "WEAPON_PETROLCAN",
	["600439132"] = "WEAPON_BALL",
	["126349499"] = "WEAPON_SNOWBALL",
	["1233104067"] = "WEAPON_FLARE",

	["856002082"] = "WEAPON_REMOTESNIPER",
	["4256881901"] = "WEAPON_DIGISCANNER",
	["1305664598"] = "WEAPON_GRENADELAUNCHER_SMOKE",
	["1752584910"] = "WEAPON_STINGER",
	["2461879995"] = "WEAPON_ELECTRIC_FENCE",

	["4194021054"] = "WEAPON_ANIMAL",
	["148160082"] = "WEAPON_COUGAR",
	["375527679"] = "WEAPON_PASSENGER_ROCKET",
	["324506233"] = "WEAPON_AIRSTRIKE_ROCKET",
	["2294779575"] = "WEAPON_BRIEFCASE",
	["28811031"] = "WEAPON_BRIEFCASE_02",
	["3204302209"] = "WEAPON_VEHICLE_ROCKET",
	["1223143800"] = "WEAPON_BARBED_WIRE",
	["4284007675"] = "WEAPON_DROWNING",
	["1936677264"] = "WEAPON_DROWNING_IN_VEHICLE",
	["2339582971"] = "WEAPON_BLEEDING",
	["539292904"] = "WEAPON_EXPLOSION",
	["3452007600"] = "WEAPON_FALL",
	["910830060"] = "WEAPON_EXHAUSTION",
	["3425972830"] = "WEAPON_HIT_BY_WATER_CANNON",
	["133987706"] = "WEAPON_RAMMED_BY_CAR",
	["2741846334"] = "WEAPON_RUN_OVER_BY_CAR",
	["341774354"] = "WEAPON_HELI_CRASH",
	["3750660587"] = "WEAPON_FIRE",

	["1945616459"] = "VEHICLE_WEAPON_TANK",
	["4171469727"] = "VEHICLE_WEAPON_SPACE_ROCKET",
	["3473446624"] = "VEHICLE_WEAPON_PLANE_ROCKET",
	["4026335563"] = "VEHICLE_WEAPON_PLAYER_LASER",
	["1259576109"] = "VEHICLE_WEAPON_PLAYER_BULLET",
	["1186503822"] = "VEHICLE_WEAPON_PLAYER_BUZZARD",
	["2669318622"] = "VEHICLE_WEAPON_PLAYER_HUNTER",
	["3800181289"] = "VEHICLE_WEAPON_PLAYER_LAZER",
	["1566990507"] = "VEHICLE_WEAPON_ENEMY_LASER",

	["3450622333"] = "VEHICLE_WEAPON_SEARCHLIGHT",
	["3530961278"] = "VEHICLE_WEAPON_RADAR",
	["2971687502"] = "VEHICLE_WEAPON_ROTORS",

	["2803906140"] = "GADGET_NIGHTVISION",
	["4222310262"] = "GADGET_PARACHUTE",
}
ToHash = {
	["WEAPON_PISTOL"] = 453432689,
	["WEAPON_PISTOL_MK2"] = 3219281620,
	["WEAPON_COMBATPISTOL"] = 1593441988,
	["WEAPON_PISTOL50"] = 2578377531,
	["WEAPON_SNSPISTOL"] = 3218215474,
	["WEAPON_SNSPISTOL_MK2"] = 2285322324,
	["WEAPON_HEAVYPISTOL"] = 3523564046,
	["WEAPON_VINTAGEPISTOL"] = 137902532,
	["WEAPON_MARKSMANPISTOL"] = 3696079510,
	["WEAPON_REVOLVER"] = 3249783761,
	["WEAPON_REVOLVER_MK2"] = 3415619887,
	["WEAPON_DOUBLEACTION"] = 2548703416,
	["WEAPON_APPISTOL"] = 584646201,
	["WEAPON_STUNGUN"] = 911657153,
	["WEAPON_FLAREGUN"] = 1198879012,

	["WEAPON_MICROSMG"] = 324215364,
	["WEAPON_MACHINEPISTOL"] = 3675956304,
	["WEAPON_MINISMG"] = 3173288789,
	["WEAPON_SMG"] = 736523883,
	["WEAPON_SMG_MK2"] = 2024373456,
	["WEAPON_ASSAULTSMG"] = 4024951519,
	["WEAPON_COMBATPDW"] = 171789620,
	["WEAPON_MG"] = 2634544996,
	["WEAPON_COMBATMG"] = 2144741730,
	["WEAPON_COMBATMG_MK2"] = 3686625920,
	["WEAPON_GUSENBERG"] = 1627465347,

	["WEAPON_ASSAULTRIFLE"] = 3220176749,
	["WEAPON_ASSAULTRIFLE_MK2"] = 961495388,
	["WEAPON_CARBINERIFLE"] = 2210333304,
	["WEAPON_CARBINERIFLE_MK2"] = 4208062921,
	["WEAPON_ADVANCEDRIFLE"] = 2937143193,
	["WEAPON_SPECIALCARBINE"] = 3231910285,
	["WEAPON_SPECIALCARBINE_MK2"] = 2526821735,
	["WEAPON_BULLPUPRIFLE"] = 2132975508,
	["WEAPON_BULLPUPRIFLE_MK2"] = 2228681469,
	["WEAPON_COMPACTRIFLE"] = 1649403952,

	["WEAPON_SNIPERRIFLE"] = 100416529,
	["WEAPON_HEAVYSNIPER"] = 205991906,
	["WEAPON_HEAVYSNIPER_MK2"] = 177293209,
	["WEAPON_MARKSMANRIFLE"] = 3342088282,
	["WEAPON_MARKSMANRIFLE_MK2"] = 1785463520,

	["WEAPON_UNARMED"] = 2725352035,
	["WEAPON_KNIFE"] = 2578778090,
	["WEAPON_NIGHTSTICK"] = 1737195953,
	["WEAPON_HAMMER"] = 1317494643,
	["WEAPON_BAT"] = 2508868239,
	["WEAPON_CROWBAR"] = 2227010557,
	["WEAPON_GOLFCLUB"] = 1141786504,
	["WEAPON_BOTTLE"] = 4192643659,
	["WEAPON_DAGGER"] = 2460120199,
	["WEAPON_HATCHET"] = 4191993645,
	["WEAPON_KNUCKLE"] = 3638508604,
	["WEAPON_MACHETE"] = 3713923289,
	["WEAPON_FLASHLIGHT"] = 2343591895,
	["WEAPON_SWITCHBLADE"] = 3756226112,
	["WEAPON_BATTLEAXE"] = 3441901897,
	["WEAPON_POOLCUE"] = 2484171525,
	["WEAPON_WRENCH"] = 419712736,

	["WEAPON_PUMPSHOTGUN"] = 487013001,
	["WEAPON_PUMPSHOTGUN_MK2"] = 1432025498,
	["WEAPON_SAWNOFFSHOTGUN"] = 2017895192,
	["WEAPON_BULLPUPSHOTGUN"] = 2640438543,
	["WEAPON_ASSAULTSHOTGUN"] = 3800352039,
	["WEAPON_MUSKET"] = 2828843422,
	["WEAPON_HEAVYSHOTGUN"] = 984333226,
	["WEAPON_DBSHOTGUN"] = 4019527611,
	["WEAPON_AUTOSHOTGUN"] = 317205821,

	["WEAPON_GRENADELAUNCHER"] = 2726580491,
	["WEAPON_RPG"] = 2982836145,
	["WEAPON_MINIGUN"] = 1119849093,
	["WEAPON_FIREWORK"] = 2138347493,
	["WEAPON_RAILGUN"] = 1834241177,
	["WEAPON_HOMINGLAUNCHER"] = 1672152130,
	["WEAPON_COMPACTLAUNCHER"] = 125959754,

	["WEAPON_GRENADE"] = 2481070269,
	["WEAPON_STICKYBOMB"] = 741814745,
	["WEAPON_PROXMINE"] = 2874559379,
	["WEAPON_PIPEBOMB"] = 3125143736,
	["WEAPON_SMOKEGRENADE"] = 4256991824,
	["WEAPON_BZGAS"] = 2694266206,
	["WEAPON_MOLOTOV"] = 615608432,
	["WEAPON_FIREEXTINGUISHER"] = 101631238,
	["WEAPON_PETROLCAN"] = 883325847,
	["WEAPON_BALL"] = 600439132,
	["WEAPON_SNOWBALL"] = 126349499,
	["WEAPON_FLARE"] = 1233104067,

	["WEAPON_REMOTESNIPER"] = 856002082,
	["WEAPON_DIGISCANNER"] = 4256881901,
	["WEAPON_GRENADELAUNCHER_SMOKE"] = 1305664598,
	["WEAPON_STINGER"] = 1752584910,
	["WEAPON_ELECTRIC_FENCE"] = 2461879995,

	["WEAPON_ANIMAL"] = 4194021054,
	["WEAPON_COUGAR"] = 148160082,
	["WEAPON_PASSENGER_ROCKET"] = 375527679,
	["WEAPON_AIRSTRIKE_ROCKET"] = 324506233,
	["WEAPON_BRIEFCASE"] = 2294779575,
	["WEAPON_BRIEFCASE_02"] = 28811031,
	["WEAPON_VEHICLE_ROCKET"] = 3204302209,
	["WEAPON_BARBED_WIRE"] = 1223143800,
	["WEAPON_DROWNING"] = 4284007675,
	["WEAPON_DROWNING_IN_VEHICLE"] = 1936677264,
	["WEAPON_BLEEDING"] = 2339582971,
	["WEAPON_EXPLOSION"] = 539292904,
	["WEAPON_FALL"] = 3452007600,
	["WEAPON_EXHAUSTION"] = 910830060,
	["WEAPON_HIT_BY_WATER_CANNON"] = 3425972830,
	["WEAPON_RAMMED_BY_CAR"] = 133987706,
	["WEAPON_RUN_OVER_BY_CAR"] = 2741846334,
	["WEAPON_HELI_CRASH"] = 341774354,
	["WEAPON_FIRE"] = 3750660587,

	["VEHICLE_WEAPON_TANK"] = 1945616459,
	["VEHICLE_WEAPON_SPACE_ROCKET"] = 4171469727,
	["VEHICLE_WEAPON_PLANE_ROCKET"] = 3473446624,
	["VEHICLE_WEAPON_PLAYER_LASER"] = 4026335563,
	["VEHICLE_WEAPON_PLAYER_BULLET"] = 1259576109,
	["VEHICLE_WEAPON_PLAYER_BUZZARD"] = 1186503822,
	["VEHICLE_WEAPON_PLAYER_HUNTER"] = 2669318622,
	["VEHICLE_WEAPON_PLAYER_LAZER"] = 3800181289,
	["VEHICLE_WEAPON_ENEMY_LASER"] = 1566990507,

	["VEHICLE_WEAPON_SEARCHLIGHT"] = 3450622333,
	["VEHICLE_WEAPON_RADAR"] = 3530961278,
	["VEHICLE_WEAPON_ROTORS"] = 2971687502,

	["GADGET_NIGHTVISION"] = 2803906140,
	["GADGET_PARACHUTE"] = 4222310262,
}
ToLabel = {
	["WEAPON_PISTOL"] = "WT_PIST",
	["WEAPON_PISTOL_MK2"] = "WT_PIST2",
	["WEAPON_COMBATPISTOL"] = "WT_PIST_CBT",
	["WEAPON_PISTOL50"] = "WT_PIST_50",
	["WEAPON_SNSPISTOL"] = "WT_SNSPISTOL",
	["WEAPON_SNSPISTOL_MK2"] = "WT_SNSPISTOL2",
	["WEAPON_HEAVYPISTOL"] = "WT_HVYPISTOL",
	["WEAPON_VINTAGEPISTOL"] = "WT_VPISTOL",
	["WEAPON_MARKSMANPISTOL"] = "WT_MKPISTOL",
	["WEAPON_REVOLVER"] = "WT_REVOLVER",
	["WEAPON_REVOLVER_MK2"] = "WT_REVOLVER2",
	["WEAPON_DOUBLEACTION"] = "WT_REV_DA",
	["WEAPON_APPISTOL"] = "WT_PIST_AP",
	["WEAPON_STUNGUN"] = "WT_STUN",
	["WEAPON_FLAREGUN"] = "WT_FLAREGUN",

	["WEAPON_MICROSMG"] = "WT_SMG_MCR",
	["WEAPON_MACHINEPISTOL"] = "WT_MCHPIST",
	["WEAPON_MINISMG"] = "WT_MINISMG",
	["WEAPON_SMG"] = "WT_SMG",
	["WEAPON_SMG_MK2"] = "WT_SMG2",
	["WEAPON_ASSAULTSMG"] = "WT_SMG_ASL",
	["WEAPON_COMBATPDW"] = "WT_COMBATPDW",
	["WEAPON_MG"] = "WT_MG",
	["WEAPON_COMBATMG"] = "WT_MG_CBT",
	["WEAPON_COMBATMG_MK2"] = "WT_MG_CBT2",
	["WEAPON_GUSENBERG"] = "WT_GUSNBRG",

	["WEAPON_ASSAULTRIFLE"] = "WT_RIFLE_ASL",
	["WEAPON_ASSAULTRIFLE_MK2"] = "WT_RIFLE_ASL2",
	["WEAPON_CARBINERIFLE"] = "WT_RIFLE_CBN",
	["WEAPON_CARBINERIFLE_MK2"] = "WT_RIFLE_CBN2",
	["WEAPON_ADVANCEDRIFLE"] = "WT_RIFLE_ADV",
	["WEAPON_SPECIALCARBINE"] = "WT_SPCARBINE",
	["WEAPON_SPECIALCARBINE_MK2"] = "WT_SPCARBINE2",
	["WEAPON_BULLPUPRIFLE"] = "WT_BULLRIFLE",
	["WEAPON_BULLPUPRIFLE_MK2"] = "WT_BULLRIFLE2",
	["WEAPON_COMPACTRIFLE"] = "WT_CMPRIFLE",

	["WEAPON_SNIPERRIFLE"] = "WT_SNIP_RIF",
	["WEAPON_HEAVYSNIPER"] = "WT_SNIP_HVY",
	["WEAPON_HEAVYSNIPER_MK2"] = "WT_SNIP_HVY2",
	["WEAPON_MARKSMANRIFLE"] = "WT_MKRIFLE",
	["WEAPON_MARKSMANRIFLE_MK2"] = "WT_MKRIFLE2",

	["WEAPON_UNARMED"] = "WT_UNARMED",
	["WEAPON_KNIFE"] = "WT_KNIFE",
	["WEAPON_NIGHTSTICK"] = "WT_NGTSTK",
	["WEAPON_HAMMER"] = "WT_HAMMER",
	["WEAPON_BAT"] = "WT_BAT",
	["WEAPON_CROWBAR"] = "WT_CROWBAR",
	["WEAPON_GOLFCLUB"] = "WT_GOLFCLUB",
	["WEAPON_BOTTLE"] = "WT_BOTTLE",
	["WEAPON_DAGGER"] = "WT_DAGGER",
	["WEAPON_HATCHET"] = "WT_HATCHET",
	["WEAPON_KNUCKLE"] = "WT_KNUCKLE",
	["WEAPON_MACHETE"] = "WT_MACHETE",
	["WEAPON_FLASHLIGHT"] = "WT_FLASHLIGHT",
	["WEAPON_SWITCHBLADE"] = "WT_SWBLADE",
	["WEAPON_BATTLEAXE"] = "WT_BATTLEAXE",
	["WEAPON_POOLCUE"] = "WT_POOLCUE",
	["WEAPON_WRENCH"] = "WT_WRENCH",

	["WEAPON_PUMPSHOTGUN"] = "WT_SG_PUMP",
	["WEAPON_PUMPSHOTGUN_MK2"] = "WT_SG_PMP2",
	["WEAPON_SAWNOFFSHOTGUN"] = "WT_SG_SOF",
	["WEAPON_BULLPUPSHOTGUN"] = "WT_SG_BLP",
	["WEAPON_ASSAULTSHOTGUN"] = "WT_SG_ASL",
	["WEAPON_MUSKET"] = "WT_MUSKET",
	["WEAPON_HEAVYSHOTGUN"] = "WT_HVYSHGN",
	["WEAPON_DBSHOTGUN"] = "WT_DBSHGN",
	["WEAPON_AUTOSHOTGUN"] = "WT_AUTOSHGN",

	["WEAPON_GRENADELAUNCHER"] = "WT_GL",
	["WEAPON_RPG"] = "WT_RPG",
	["WEAPON_MINIGUN"] = "WT_MINIGUN",
	["WEAPON_FIREWORK"] = "WT_FIREWRK",
	["WEAPON_RAILGUN"] = "WT_RAILGUN",
	["WEAPON_HOMINGLAUNCHER"] = "WT_HOMLNCH",
	["WEAPON_COMPACTLAUNCHER"] = "WT_CMPGL",

	["WEAPON_GRENADE"] = "WT_GNADE",
	["WEAPON_STICKYBOMB"] = "WT_GNADE_STK",
	["WEAPON_PROXMINE"] = "WT_PRXMINE",
	["WEAPON_PIPEBOMB"] = "WT_PIPEBOMB",
	["WEAPON_SMOKEGRENADE"] = "WT_GNADE_SMK",
	["WEAPON_BZGAS"] = "WT_BZGAS",
	["WEAPON_MOLOTOV"] = "WT_MOLOTOV",
	["WEAPON_FIREEXTINGUISHER"] = "WT_FIRE",
	["WEAPON_PETROLCAN"] = "WT_PETROL",
	["WEAPON_BALL"] = "WT_BALL",
	["WEAPON_SNOWBALL"] = "WT_SNOWBALL - NULL",
	["WEAPON_FLARE"] = "WT_FLARE",

	["WEAPON_REMOTESNIPER"] = "WT_SNIP_RMT",
	["WEAPON_DIGISCANNER"] = "WT_DIGI",
	["WEAPON_GRENADELAUNCHER_SMOKE"] = "WT_GL_SMOKE",
	["WEAPON_STINGER"] = "WT_RPG",
	["WEAPON_ELECTRIC_FENCE"] = "WT_ELCFEN",

	["WEAPON_ANIMAL"] = "WT_INVALID",
	["WEAPON_COUGAR"] = "WT_INVALID",
	["WEAPON_PASSENGER_ROCKET"] = "WT_INVALID",
	["WEAPON_AIRSTRIKE_ROCKET"] = "WT_INVALID",
	["WEAPON_BRIEFCASE"] = "WT_INVALID",
	["WEAPON_BRIEFCASE_02"] = "WT_INVALID",
	["WEAPON_VEHICLE_ROCKET"] = "WT_INVALID",
	["WEAPON_BARBED_WIRE"] = "WT_INVALID",
	["WEAPON_DROWNING"] = "WT_INVALID",
	["WEAPON_DROWNING_IN_VEHICLE"] = "WT_INVALID",
	["WEAPON_BLEEDING"] = "WT_INVALID",
	["WEAPON_EXPLOSION"] = "WT_INVALID",
	["WEAPON_FALL"] = "WT_INVALID",
	["WEAPON_EXHAUSTION"] = "WT_INVALID",
	["WEAPON_HIT_BY_WATER_CANNON"] = "WT_INVALID",
	["WEAPON_RAMMED_BY_CAR"] = "WT_INVALID",
	["WEAPON_RUN_OVER_BY_CAR"] = "WT_INVALID",
	["WEAPON_HELI_CRASH"] = "WT_INVALID",
	["WEAPON_FIRE"] = "WT_INVALID",

	["VEHICLE_WEAPON_TANK"] = "WT_V_TANK",
	["VEHICLE_WEAPON_SPACE_ROCKET"] = "WT_V_SPACERKT",
	["VEHICLE_WEAPON_PLANE_ROCKET"] = "WT_V_PLANEMSL",
	["VEHICLE_WEAPON_PLAYER_LASER"] = "WT_V_PLRLSR",
	["VEHICLE_WEAPON_PLAYER_BULLET"] = "WT_V_PLRBUL",
	["VEHICLE_WEAPON_PLAYER_BUZZARD"] = "WT_V_PLRBUL",
	["VEHICLE_WEAPON_PLAYER_HUNTER"] = "WT_V_PLRBUL",
	["VEHICLE_WEAPON_PLAYER_LAZER"] = "WT_V_LZRCAN",
	["VEHICLE_WEAPON_ENEMY_LASER"] = "WT_A_ENMYLSR",

	["VEHICLE_WEAPON_SEARCHLIGHT"] = "WT_INVALID",
	["VEHICLE_WEAPON_RADAR"] = "WT_INVALID",
	["VEHICLE_WEAPON_ROTORS"] = "WT_INVALID",

	["GADGET_NIGHTVISION"] = "WT_NV",
	["GADGET_PARACHUTE"] = "WT_PARA",
}
Components = {
	["WEAPON_PISTOL"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_PISTOL_MK2"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_PISTOL_MK2_CLIP_01",
				Label = "WCT_CLIP1",
			},
			[2] = {
				Component = "COMPONENT_PISTOL_MK2_CLIP_02",
				Label = "WCT_CLIP2",
			},
			[3] = {
				Component = "COMPONENT_PISTOL_MK2_CLIP_TRACER",
				Label = "WCT_CLIP_TR",
			},
			[4] = {
				Component = "COMPONENT_PISTOL_MK2_CLIP_INCENDIARY",
				Label = "WCT_CLIP_INC",
			},
			[5] = {
				Component = "COMPONENT_PISTOL_MK2_CLIP_HOLLOWPOINT",
				Label = "WCT_CLIP_HP",
			},
			[6] = {
				Component = "COMPONENT_PISTOL_MK2_CLIP_FMJ",
				Label = "WCT_CLIP_FMJ",
			},
		},
		["Grip"] = {},
		["Scope"] = {
			[1] = {
				Component = "COMPONENT_AT_PI_RAIL",
				Label = "WCT_SCOPE_PI",
			},
		},
		["Tactical"] = {
			[1] = {
				Component = "COMPONENT_AT_PI_FLSH_02",
				Label = "WCT_FLASH",
			},
		},
		["Muzzle"] = {
			[1] = {
				Component = "COMPONENT_AT_PI_SUPP_02",
				Label = "WCT_SUPP",
			},
			[2] = {
				Component = "COMPONENT_AT_PI_COMP",
				Label = "WCT_COMP",
			},
		},
		["Variant"] = {
			[1] = {
				Component = {"COMPONENT_PISTOL_MK2_CAMO_SLIDE", "COMPONENT_PISTOL_MK2_CAMO"},
				Label = "WCT_CAMO_1",
			},
			[2] = {
				Component = {"COMPONENT_PISTOL_MK2_CAMO_02_SLIDE", "COMPONENT_PISTOL_MK2_CAMO_02"},
				Label = "WCT_CAMO_2",
			},
			[3] = {
				Component = {"COMPONENT_PISTOL_MK2_CAMO_03_SLIDE", "COMPONENT_PISTOL_MK2_CAMO_03"},
				Label = "WCT_CAMO_3",
			},
			[4] = {
				Component = {"COMPONENT_PISTOL_MK2_CAMO_04_SLIDE", "COMPONENT_PISTOL_MK2_CAMO_04"},
				Label = "WCT_CAMO_4",
			},
			[5] = {
				Component = {"COMPONENT_PISTOL_MK2_CAMO_05_SLIDE", "COMPONENT_PISTOL_MK2_CAMO_05"},
				Label = "WCT_CAMO_5",
			},
			[6] = {
				Component = {"COMPONENT_PISTOL_MK2_CAMO_06_SLIDE", "COMPONENT_PISTOL_MK2_CAMO_06"},
				Label = "WCT_CAMO_6",
			},
			[7] = {
				Component = {"COMPONENT_PISTOL_MK2_CAMO_07_SLIDE", "COMPONENT_PISTOL_MK2_CAMO_07"},
				Label = "WCT_CAMO_7",
			},
			[8] = {
				Component = {"COMPONENT_PISTOL_MK2_CAMO_08_SLIDE", "COMPONENT_PISTOL_MK2_CAMO_08"},
				Label = "WCT_CAMO_8",
			},
			[9] = {
				Component = {"COMPONENT_PISTOL_MK2_CAMO_09_SLIDE", "COMPONENT_PISTOL_MK2_CAMO_09"},
				Label = "WCT_CAMO_9",
			},
			[10] = {
				Component = {"COMPONENT_PISTOL_MK2_CAMO_10_SLIDE", "COMPONENT_PISTOL_MK2_CAMO_10"},
				Label = "WCT_CAMO_10",
			},
			[11] = {
				Component = {"COMPONENT_PISTOL_MK2_CAMO_IND_01_SLIDE", "COMPONENT_PISTOL_MK2_CAMO_IND_01"},
				Label = "WCT_CAMO_IND",
			},
		},
	},
	["WEAPON_COMBATPISTOL"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_PISTOL50"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_SNSPISTOL"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_SNSPISTOL_CLIP_01",
				Label = "WCT_CLIP1",
			},
			[2] = {
				Component = "COMPONENT_SNSPISTOL_CLIP_02",
				Label = "WCT_CLIP2",
			},
		},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {
			[1] = {
				Component = "COMPONENT_SNSPISTOL_VARMOD_LOWRIDER",
				Label = "WCT_VAR_WOOD",
			},
		},
	},
	["WEAPON_SNSPISTOL_MK2"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_SNSPISTOL_MK2_CLIP_01",
				Label = "WCT_CLIP1",
			},
			[2] = {
				Component = "COMPONENT_SNSPISTOL_MK2_CLIP_02",
				Label = "WCT_CLIP2",
			},
			[3] = {
				Component = "COMPONENT_SNSPISTOL_MK2_CLIP_TRACER",
				Label = "WCT_CLIP_TR",
			},
			[4] = {
				Component = "COMPONENT_SNSPISTOL_MK2_CLIP_INCENDIARY",
				Label = "WCT_CLIP_INC",
			},
			[5] = {
				Component = "COMPONENT_SNSPISTOL_MK2_CLIP_HOLLOWPOINT",
				Label = "WCT_CLIP_HP",
			},
			[6] = {
				Component = "COMPONENT_SNSPISTOL_MK2_CLIP_FMJ",
				Label = "WCT_CLIP_FMJ",
			},
		},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {
			[1] = {
				Component = "COMPONENT_AT_PI_FLSH_03",
				Label = "WCT_FLASH",
			},
		},
		["Muzzle"] = {
			[1] = {
				Component = "COMPONENT_AT_PI_SUPP_02",
				Label = "WCT_SUPP",
			},
			[2] = {
				Component = "COMPONENT_AT_PI_COMP_02",
				Label = "WCT_COMP",
			},
		},
		["Variant"] = {
			[1] = {
				Component = "COMPONENT_SNSPISTOL_MK2_CAMO",
				Label = "WCT_CAMO_1",
			},
			[2] = {
				Component = "COMPONENT_SNSPISTOL_MK2_CAMO_02",
				Label = "WCT_CAMO_2",
			},
			[3] = {
				Component = "COMPONENT_SNSPISTOL_MK2_CAMO_03",
				Label = "WCT_CAMO_3",
			},
			[4] = {
				Component = "COMPONENT_SNSPISTOL_MK2_CAMO_04",
				Label = "WCT_CAMO_4",
			},
			[5] = {
				Component = "COMPONENT_SNSPISTOL_MK2_CAMO_05",
				Label = "WCT_CAMO_5",
			},
			[6] = {
				Component = "COMPONENT_SNSPISTOL_MK2_CAMO_06",
				Label = "WCT_CAMO_6",
			},
			[7] = {
				Component = "COMPONENT_SNSPISTOL_MK2_CAMO_07",
				Label = "WCT_CAMO_7",
			},
			[8] = {
				Component = "COMPONENT_SNSPISTOL_MK2_CAMO_08",
				Label = "WCT_CAMO_8",
			},
			[9] = {
				Component = "COMPONENT_SNSPISTOL_MK2_CAMO_09",
				Label = "WCT_CAMO_9",
			},
			[10] = {
				Component = "COMPONENT_SNSPISTOL_MK2_CAMO_10",
				Label = "WCT_CAMO_10",
			},
			[11] = {
				Component = "COMPONENT_SNSPISTOL_MK2_CAMO_IND_01",
				Label = "WCT_CAMO_IND",
			},
		},
	},
	["WEAPON_HEAVYPISTOL"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_HEAVYPISTOL_CLIP_01",
				Label = "WCT_CLIP1",
			},
			[2] = {
				Component = "COMPONENT_HEAVYPISTOL_CLIP_02",
				Label = "WCT_CLIP2",
			},
		},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {
			[1] = {
				Component = "COMPONENT_AT_PI_FLSH",
				Label = "WCT_FLASH",
			},		
		},
		["Muzzle"] = {
			[1] = {
				Component = "COMPONENT_AT_PI_SUPP",
				Label = "WCT_SUPP",
			},
		},
		["Variant"] = {
			[1] = {
				Component = "COMPONENT_HEAVYPISTOL_VARMOD_LUXE",
				Label = "WCT_VAR_WOOD",
			},
		},
	},
	["WEAPON_VINTAGEPISTOL"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_MARKSMANPISTOL"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_REVOLVER"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_REVOLVER_MK2"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_REVOLVER_MK2_CLIP_01",
				Label = "WCT_CLIP1_RV",
			},
			[2] = {
				Component = "COMPONENT_REVOLVER_MK2_CLIP_TRACER",
				Label = "WCT_CLIP_TR",
			},
			[3] = {
				Component = "COMPONENT_REVOLVER_MK2_CLIP_INCENDIARY",
				Label = "WCT_CLIP_INC",
			},
			[4] = {
				Component = "COMPONENT_REVOLVER_MK2_CLIP_HOLLOWPOINT",
				Label = "WCT_CLIP_HP",
			},
			[5] = {
				Component = "COMPONENT_REVOLVER_MK2_CLIP_FMJ",
				Label = "WCT_CLIP_FMJ",
			},
		},
		["Grip"] = {},
		["Scope"] = {
			[1] = {
				Component = "COMPONENT_AT_SIGHTS",
				Label = "WCT_HOLO",
			},
			[2] = {
				Component = "COMPONENT_AT_SCOPE_MACRO_MK2",
				Label = "WCT_SCOPE_MAC2",
			},
		},
		["Tactical"] = {
			[1] = {
				Component = "COMPONENT_AT_PI_FLSH",
				Label = "WCT_FLASH",
			},
		},
		["Muzzle"] = {
			[1] = {
				Component = "COMPONENT_AT_PI_COMP_03",
				Label = "WCT_COMP",
			},
		},
		["Variant"] = {
			[1] = {
				Component = "COMPONENT_REVOLVER_MK2_CAMO",
				Label = "WCT_CAMO_1",
			},
			[2] = {
				Component = "COMPONENT_REVOLVER_MK2_CAMO_02",
				Label = "WCT_CAMO_2",
			},
			[3] = {
				Component = "COMPONENT_REVOLVER_MK2_CAMO_03",
				Label = "WCT_CAMO_3",
			},
			[4] = {
				Component = "COMPONENT_REVOLVER_MK2_CAMO_04",
				Label = "WCT_CAMO_4",
			},
			[5] = {
				Component = "COMPONENT_REVOLVER_MK2_CAMO_05",
				Label = "WCT_CAMO_5",
			},
			[6] = {
				Component = "COMPONENT_REVOLVER_MK2_CAMO_06",
				Label = "WCT_CAMO_6",
			},
			[7] = {
				Component = "COMPONENT_REVOLVER_MK2_CAMO_07",
				Label = "WCT_CAMO_7",
			},
			[8] = {
				Component = "COMPONENT_REVOLVER_MK2_CAMO_08",
				Label = "WCT_CAMO_8",
			},
			[9] = {
				Component = "COMPONENT_REVOLVER_MK2_CAMO_09",
				Label = "WCT_CAMO_9",
			},
			[10] = {
				Component = "COMPONENT_REVOLVER_MK2_CAMO_10",
				Label = "WCT_CAMO_10",
			},
			[11] = {
				Component = "COMPONENT_REVOLVER_MK2_CAMO_IND_01",
				Label = "WCT_CAMO_IND",
			},
		},
	},
	["WEAPON_DOUBLEACTION"] = {},
	["WEAPON_APPISTOL"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_STUNGUN"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_FLAREGUN"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},

	["WEAPON_MICROSMG"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_MACHINEPISTOL"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_MACHINEPISTOL_CLIP_01",
				Label = "WCT_CLIP1",
			},
			[2] = {
				Component = "COMPONENT_MACHINEPISTOL_CLIP_02",
				Label = "WCT_CLIP2",
			},
			[3] = {
				Component = "COMPONENT_MACHINEPISTOL_CLIP_03",
				Label = "WCT_CLIP_DRM",
			},
		},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {
			[1] = {
				Component = "COMPONENT_AT_PI_SUPP",
				Label = "WCT_SUPP",
			},
		},
		["Variant"] = {},
	},
	["WEAPON_MINISMG"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_MINISMG_CLIP_01",
				Label = "WCT_CLIP1",
			},
			[2] = {
				Component = "COMPONENT_MINISMG_CLIP_02",
				Label = "WCT_CLIP2",
			},
		},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_SMG"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_SMG_MK2"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_SMG_MK2_CLIP_01",
				Label = "WCT_CLIP1",
			},
			[2] = {
				Component = "COMPONENT_SMG_MK2_CLIP_02",
				Label = "WCT_CLIP2",
			},
			[3] = {
				Component = "COMPONENT_SMG_MK2_CLIP_TRACER",
				Label = "WCT_CLIP_TR",
			},
			[4] = {
				Component = "COMPONENT_SMG_MK2_CLIP_INCENDIARY",
				Label = "WCT_CLIP_INC",
			},
			[5] = {
				Component = "COMPONENT_SMG_MK2_CLIP_HOLLOWPOINT",
				Label = "WCT_CLIP_HP",
			},
			[6] = {
				Component = "COMPONENT_SMG_MK2_CLIP_FMJ",
				Label = "WCT_CLIP_FMJ",
			},
		},
		["Grip"] = {},
		["Scope"] = {
			[1] = {
				Component = "COMPONENT_AT_SIGHTS_SMG",
				Label = "WCT_HOLO",
			},
			[2] = {
				Component = "COMPONENT_AT_SCOPE_MACRO_02_SMG_MK2",
				Label = "WCT_SCOPE_MAC2",
			},
			[3] = {
				Component = "COMPONENT_AT_SCOPE_SMALL_SMG_MK2",
				Label = "WCT_SCOPE_SML2",
			},
		},
		["Tactical"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_FLSH",
				Label = "WCT_FLASH",
			},
		},
		["Muzzle"] = {
			[1] = {
				Component = "COMPONENT_AT_PI_SUPP",
				Label = "WCT_SUPP",
			},
			[2] = {
				Component = "COMPONENT_AT_MUZZLE_01",
				Label = "WCT_MUZZ1",
			},
			[3] = {
				Component = "COMPONENT_AT_MUZZLE_02",
				Label = "WCT_MUZZ2",
			},
			[4] = {
				Component = "COMPONENT_AT_MUZZLE_03",
				Label = "WCT_MUZZ3",
			},
			[5] = {
				Component = "COMPONENT_AT_MUZZLE_04",
				Label = "WCT_MUZZ4",
			},
			[6] = {
				Component = "COMPONENT_AT_MUZZLE_05",
				Label = "WCT_MUZZ5",
			},
			[7] = {
				Component = "COMPONENT_AT_MUZZLE_06",
				Label = "WCT_MUZZ6",
			},
			[8] = {
				Component = "COMPONENT_AT_MUZZLE_07",
				Label = "WCT_MUZZ7",
			},
		},
		["Variant"] = {
			[1] = {
				Component = "COMPONENT_SMG_MK2_CAMO",
				Label = "WCT_CAMO_1",
			},
			[2] = {
				Component = "COMPONENT_SMG_MK2_CAMO_02",
				Label = "WCT_CAMO_2",
			},
			[3] = {
				Component = "COMPONENT_SMG_MK2_CAMO_03",
				Label = "WCT_CAMO_3",
			},
			[4] = {
				Component = "COMPONENT_SMG_MK2_CAMO_04",
				Label = "WCT_CAMO_4",
			},
			[5] = {
				Component = "COMPONENT_SMG_MK2_CAMO_05",
				Label = "WCT_CAMO_5",
			},
			[6] = {
				Component = "COMPONENT_SMG_MK2_CAMO_06",
				Label = "WCT_CAMO_6",
			},
			[7] = {
				Component = "COMPONENT_SMG_MK2_CAMO_07",
				Label = "WCT_CAMO_7",
			},
			[8] = {
				Component = "COMPONENT_SMG_MK2_CAMO_08",
				Label = "WCT_CAMO_8",
			},
			[9] = {
				Component = "COMPONENT_SMG_MK2_CAMO_09",
				Label = "WCT_CAMO_9",
			},
			[10] = {
				Component = "COMPONENT_SMG_MK2_CAMO_10",
				Label = "WCT_CAMO_10",
			},
			[11] = {
				Component = "COMPONENT_SMG_MK2_CAMO_IND_01",
				Label = "WCT_CAMO_IND",
			},
		},
	},
	["WEAPON_ASSAULTSMG"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_COMBATPDW"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_COMBATPDW_CLIP_01",
				Label = "WCT_CLIP1",
			},
			[2] = {
				Component = "COMPONENT_COMBATPDW_CLIP_02",
				Label = "WCT_CLIP2",
			},
			[3] = {
				Component = "COMPONENT_COMBATPDW_CLIP_03",
				Label = "WCT_CLIP_DRM",
			},
		},
		["Grip"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_AFGRIP",
				Label = "WCT_GRIP",
			},
		},
		["Scope"] = {
			[1] = {
				Component = "COMPONENT_AT_SCOPE_SMALL",
				Label = "WCT_SCOPE_SML",
			},
		},
		["Tactical"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_FLSH",
				Label = "WCT_FLASH",
			},
		},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_MG"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_COMBATMG"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_COMBATMG_MK2"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_COMBATMG_MK2_CLIP_01",
				Label = "WCT_CLIP1",
			},
			[2] = {
				Component = "COMPONENT_COMBATMG_MK2_CLIP_02",
				Label = "WCT_CLIP2",
			},
			[3] = {
				Component = "COMPONENT_COMBATMG_MK2_CLIP_TRACER",
				Label = "WCT_CLIP_TR",
			},
			[4] = {
				Component = "COMPONENT_COMBATMG_MK2_CLIP_INCENDIARY",
				Label = "WCT_CLIP_INC",
			},
			[5] = {
				Component = "COMPONENT_COMBATMG_MK2_CLIP_ARMORPIERCING",
				Label = "WCT_CLIP_AP",
			},
			[6] = {
				Component = "COMPONENT_COMBATMG_MK2_CLIP_FMJ",
				Label = "WCT_CLIP_FMJ",
			},
		},
		["Grip"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_AFGRIP_02",
				Label = "WCT_GRIP",
			},
		},
		["Scope"] = {
			[1] = {
				Component = "COMPONENT_AT_SIGHTS",
				Label = "WCT_HOLO",
			},
			[2] = {
				Component = "COMPONENT_AT_SCOPE_SMALL_MK2",
				Label = "WCT_SCOPE_SML2",
			},
			[3] = {
				Component = "COMPONENT_AT_SCOPE_MEDIUM_MK2",
				Label = "WCT_SCOPE_MED2",
			},	
		},
		["Tactical"] = {},
		["Muzzle"] = {
			[1] = {
				Component = "COMPONENT_AT_MUZZLE_01",
				Label = "WCT_MUZZ1",
			},
			[2] = {
				Component = "COMPONENT_AT_MUZZLE_02",
				Label = "WCT_MUZZ2",
			},
			[3] = {
				Component = "COMPONENT_AT_MUZZLE_03",
				Label = "WCT_MUZZ3",
			},
			[4] = {
				Component = "COMPONENT_AT_MUZZLE_04",
				Label = "WCT_MUZZ4",
			},
			[5] = {
				Component = "COMPONENT_AT_MUZZLE_05",
				Label = "WCT_MUZZ5",
			},
			[6] = {
				Component = "COMPONENT_AT_MUZZLE_06",
				Label = "WCT_MUZZ6",
			},
			[7] = {
				Component = "COMPONENT_AT_MUZZLE_07",
				Label = "WCT_MUZZ7",
			},
		},
		["Variant"] = {
			[1] = {
				Component = "COMPONENT_COMBATMG_MK2_CAMO",
				Label = "WCT_CAMO_1",
			},
			[2] = {
				Component = "COMPONENT_COMBATMG_MK2_CAMO_02",
				Label = "WCT_CAMO_2",
			},
			[3] = {
				Component = "COMPONENT_COMBATMG_MK2_CAMO_03",
				Label = "WCT_CAMO_3",
			},
			[4] = {
				Component = "COMPONENT_COMBATMG_MK2_CAMO_04",
				Label = "WCT_CAMO_4",
			},
			[5] = {
				Component = "COMPONENT_COMBATMG_MK2_CAMO_05",
				Label = "WCT_CAMO_5",
			},
			[6] = {
				Component = "COMPONENT_COMBATMG_MK2_CAMO_06",
				Label = "WCT_CAMO_6",
			},
			[7] = {
				Component = "COMPONENT_COMBATMG_MK2_CAMO_07",
				Label = "WCT_CAMO_7",
			},
			[8] = {
				Component = "COMPONENT_COMBATMG_MK2_CAMO_08",
				Label = "WCT_CAMO_8",
			},
			[9] = {
				Component = "COMPONENT_COMBATMG_MK2_CAMO_09",
				Label = "WCT_CAMO_9",
			},
			[10] = {
				Component = "COMPONENT_COMBATMG_MK2_CAMO_10",
				Label = "WCT_CAMO_10",
			},
			[11] = {
				Component = "COMPONENT_COMBATMG_MK2_CAMO_IND_01",
				Label = "WCT_CAMO_IND",
			},
		},
	},
	["WEAPON_GUSENBERG"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},

	["WEAPON_ASSAULTRIFLE"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_ASSAULTRIFLE_MK2"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_01",
				Label = "WCT_CLIP1",
			},
			[2] = {
				Component = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_02",
				Label = "WCT_CLIP2",
			},
			[3] = {
				Component = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_TRACER",
				Label = "WCT_CLIP_TR",
			},
			[4] = {
				Component = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_INCENDIARY",
				Label = "WCT_CLIP_INC",
			},
			[5] = {
				Component = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_ARMORPIERCING",
				Label = "WCT_CLIP_AP",
			},
			[6] = {
				Component = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_FMJ",
				Label = "WCT_CLIP_FMJ",
			},
		},
		["Grip"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_AFGRIP_02",
				Label = "WCT_GRIP",
			},
		},
		["Scope"] = {
			[1] = {
				Component = "COMPONENT_AT_SIGHTS",
				Label = "WCT_HOLO",
			},
			[2] = {
				Component = "COMPONENT_AT_SCOPE_MACRO_MK2",
				Label = "WCT_SCOPE_MAC2",
			},
			[3] = {
				Component = "COMPONENT_AT_SCOPE_MEDIUM_MK2",
				Label = "WCT_SCOPE_MED2",
			},				
		},
		["Tactical"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_FLSH",
				Label = "WCT_FLASH",
			},
		},
		["Muzzle"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_SUPP_02",
				Label = "WCT_SUPP",
			},
			[2] = {
				Component = "COMPONENT_AT_MUZZLE_01",
				Label = "WCT_MUZZ1",
			},
			[3] = {
				Component = "COMPONENT_AT_MUZZLE_02",
				Label = "WCT_MUZZ2",
			},
			[4] = {
				Component = "COMPONENT_AT_MUZZLE_03",
				Label = "WCT_MUZZ3",
			},
			[5] = {
				Component = "COMPONENT_AT_MUZZLE_04",
				Label = "WCT_MUZZ4",
			},
			[6] = {
				Component = "COMPONENT_AT_MUZZLE_05",
				Label = "WCT_MUZZ5",
			},
			[7] = {
				Component = "COMPONENT_AT_MUZZLE_06",
				Label = "WCT_MUZZ6",
			},
			[8] = {
				Component = "COMPONENT_AT_MUZZLE_07",
				Label = "WCT_MUZZ7",
			},
		},
		["Variant"] = {
			[1] = {
				Component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO",
				Label = "WCT_CAMO_1",
			},
			[2] = {
				Component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_02",
				Label = "WCT_CAMO_2",
			},
			[3] = {
				Component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_03",
				Label = "WCT_CAMO_3",
			},
			[4] = {
				Component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_04",
				Label = "WCT_CAMO_4",
			},
			[5] = {
				Component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_05",
				Label = "WCT_CAMO_5",
			},
			[6] = {
				Component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_06",
				Label = "WCT_CAMO_6",
			},
			[7] = {
				Component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_07",
				Label = "WCT_CAMO_7",
			},
			[8] = {
				Component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_08",
				Label = "WCT_CAMO_8",
			},
			[9] = {
				Component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_09",
				Label = "WCT_CAMO_9",
			},
			[10] = {
				Component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_10",
				Label = "WCT_CAMO_10",
			},
			[11] = {
				Component = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_IND_01",
				Label = "WCT_CAMO_IND",
			},
		},
	},
	["WEAPON_CARBINERIFLE"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_SPECIALCARBINE_CLIP_01",
				Label = "WCT_CLIP1",
			},
			[2] = {
				Component = "COMPONENT_SPECIALCARBINE_CLIP_02",
				Label = "WCT_CLIP2",
			},
			[3] = {
				Component = "COMPONENT_SPECIALCARBINE_CLIP_03",
				Label = "WCT_CLIP3",
			},
		},
		["Grip"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_AFGRIP",
				Label = "WCT_GRIP",
			},
		},
		["Scope"] = {
			[1] = {
				Component = "COMPONENT_AT_SCOPE_MEDIUM",
				Label = "WCT_SCOPE_MED",
			},
		},
		["Tactical"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_FLSH",
				Label = "WCT_FLASH",
			},
		},
		["Muzzle"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_SUPP_02",
				Label = "WCT_SUPP",
			},
		},
		["Variant"] = {
			[1] = {
				Component = "COMPONENT_SPECIALCARBINE_VARMOD_LOWRIDER",
				Label = "WCT_VAR_ETCHM",
			},
		},
	},
	["WEAPON_CARBINERIFLE_MK2"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_CARBINERIFLE_MK2_CLIP_01",
				Label = "WCT_CLIP1",
			},
			[2] = {
				Component = "COMPONENT_CARBINERIFLE_MK2_CLIP_02",
				Label = "WCT_CLIP2",
			},
			[3] = {
				Component = "COMPONENT_CARBINERIFLE_MK2_CLIP_TRACER",
				Label = "WCT_CLIP_TR",
			},
			[4] = {
				Component = "COMPONENT_CARBINERIFLE_MK2_CLIP_INCENDIARY",
				Label = "WCT_CLIP_INC",
			},
			[5] = {
				Component = "COMPONENT_CARBINERIFLE_MK2_CLIP_ARMORPIERCING",
				Label = "WCT_CLIP_AP",
			},
			[6] = {
				Component = "COMPONENT_CARBINERIFLE_MK2_CLIP_FMJ",
				Label = "WCT_CLIP_FMJ",
			},
		},
		["Grip"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_AFGRIP_02",
				Label = "WCT_GRIP",
			},
		},
		["Scope"] = {
			[1] = {
				Component = "COMPONENT_AT_SIGHTS",
				Label = "WCT_HOLO",
			},
			[2] = {
				Component = "COMPONENT_AT_SCOPE_MACRO_MK2",
				Label = "WCT_SCOPE_MAC2",
			},
			[3] = {
				Component = "COMPONENT_AT_SCOPE_MEDIUM_MK2",
				Label = "WCT_SCOPE_MED2",
			},				
		},
		["Tactical"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_FLSH",
				Label = "WCT_FLASH",
			},
		},
		["Muzzle"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_SUPP",
				Label = "WCT_SUPP",
			},
			[2] = {
				Component = "COMPONENT_AT_MUZZLE_01",
				Label = "WCT_MUZZ1",
			},
			[3] = {
				Component = "COMPONENT_AT_MUZZLE_02",
				Label = "WCT_MUZZ2",
			},
			[4] = {
				Component = "COMPONENT_AT_MUZZLE_03",
				Label = "WCT_MUZZ3",
			},
			[5] = {
				Component = "COMPONENT_AT_MUZZLE_04",
				Label = "WCT_MUZZ4",
			},
			[6] = {
				Component = "COMPONENT_AT_MUZZLE_05",
				Label = "WCT_MUZZ5",
			},
			[7] = {
				Component = "COMPONENT_AT_MUZZLE_06",
				Label = "WCT_MUZZ6",
			},
			[8] = {
				Component = "COMPONENT_AT_MUZZLE_07",
				Label = "WCT_MUZZ7",
			},
		},
		["Variant"] = {
			[1] = {
				Component = "COMPONENT_CARBINERIFLE_MK2_CAMO",
				Label = "WCT_CAMO_1",
			},
			[2] = {
				Component = "COMPONENT_CARBINERIFLE_MK2_CAMO_02",
				Label = "WCT_CAMO_2",
			},
			[3] = {
				Component = "COMPONENT_CARBINERIFLE_MK2_CAMO_03",
				Label = "WCT_CAMO_3",
			},
			[4] = {
				Component = "COMPONENT_CARBINERIFLE_MK2_CAMO_04",
				Label = "WCT_CAMO_4",
			},
			[5] = {
				Component = "COMPONENT_CARBINERIFLE_MK2_CAMO_05",
				Label = "WCT_CAMO_5",
			},
			[6] = {
				Component = "COMPONENT_CARBINERIFLE_MK2_CAMO_06",
				Label = "WCT_CAMO_6",
			},
			[7] = {
				Component = "COMPONENT_CARBINERIFLE_MK2_CAMO_07",
				Label = "WCT_CAMO_7",
			},
			[8] = {
				Component = "COMPONENT_CARBINERIFLE_MK2_CAMO_08",
				Label = "WCT_CAMO_8",
			},
			[9] = {
				Component = "COMPONENT_CARBINERIFLE_MK2_CAMO_09",
				Label = "WCT_CAMO_9",
			},
			[10] = {
				Component = "COMPONENT_CARBINERIFLE_MK2_CAMO_10",
				Label = "WCT_CAMO_10",
			},
			[11] = {
				Component = "COMPONENT_CARBINERIFLE_MK2_CAMO_IND_01",
				Label = "WCT_CAMO_IND",
			},
		},
	},
	["WEAPON_ADVANCEDRIFLE"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_SPECIALCARBINE"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_SPECIALCARBINE_MK2"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_SPECIALCARBINE_MK2_CLIP_01",
				Label = "WCT_CLIP1",
			},
			[2] = {
				Component = "COMPONENT_SPECIALCARBINE_MK2_CLIP_02",
				Label = "WCT_CLIP2",
			},
			[3] = {
				Component = "COMPONENT_SPECIALCARBINE_MK2_CLIP_TRACER",
				Label = "WCT_CLIP_TR",
			},
			[4] = {
				Component = "COMPONENT_SPECIALCARBINE_MK2_CLIP_INCENDIARY",
				Label = "WCT_CLIP_INC",
			},
			[5] = {
				Component = "COMPONENT_SPECIALCARBINE_MK2_CLIP_ARMORPIERCING",
				Label = "WCT_CLIP_AP",
			},
			[6] = {
				Component = "COMPONENT_SPECIALCARBINE_MK2_CLIP_FMJ",
				Label = "WCT_CLIP_FMJ",
			},
		},
		["Grip"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_AFGRIP_02",
				Label = "WCT_GRIP",
			},
		},
		["Scope"] = {
			[1] = {
				Component = "COMPONENT_AT_SIGHTS",
				Label = "WCT_HOLO",
			},
			[2] = {
				Component = "COMPONENT_AT_SCOPE_MACRO_MK2",
				Label = "WCT_SCOPE_MAC2",
			},
			[3] = {
				Component = "COMPONENT_AT_SCOPE_MEDIUM_MK2",
				Label = "WCT_SCOPE_MED2",
			},	
		},
		["Tactical"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_FLSH",
				Label = "WCT_FLASH",
			},
		},
		["Muzzle"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_SUPP_02",
				Label = "WCT_SUPP",
			},
			[2] = {
				Component = "COMPONENT_AT_MUZZLE_01",
				Label = "WCT_MUZZ1",
			},
			[3] = {
				Component = "COMPONENT_AT_MUZZLE_02",
				Label = "WCT_MUZZ2",
			},
			[4] = {
				Component = "COMPONENT_AT_MUZZLE_03",
				Label = "WCT_MUZZ3",
			},
			[5] = {
				Component = "COMPONENT_AT_MUZZLE_04",
				Label = "WCT_MUZZ4",
			},
			[6] = {
				Component = "COMPONENT_AT_MUZZLE_05",
				Label = "WCT_MUZZ5",
			},
			[7] = {
				Component = "COMPONENT_AT_MUZZLE_06",
				Label = "WCT_MUZZ6",
			},
			[8] = {
				Component = "COMPONENT_AT_MUZZLE_07",
				Label = "WCT_MUZZ7",
			},
		},
		["Variant"] = {
			[1] = {
				Component = "COMPONENT_SPECIALCARBINE_MK2_CAMO",
				Label = "WCT_CAMO_1",
			},
			[2] = {
				Component = "COMPONENT_SPECIALCARBINE_MK2_CAMO_02",
				Label = "WCT_CAMO_2",
			},
			[3] = {
				Component = "COMPONENT_SPECIALCARBINE_MK2_CAMO_03",
				Label = "WCT_CAMO_3",
			},
			[4] = {
				Component = "COMPONENT_SPECIALCARBINE_MK2_CAMO_04",
				Label = "WCT_CAMO_4",
			},
			[5] = {
				Component = "COMPONENT_SPECIALCARBINE_MK2_CAMO_05",
				Label = "WCT_CAMO_5",
			},
			[6] = {
				Component = "COMPONENT_SPECIALCARBINE_MK2_CAMO_06",
				Label = "WCT_CAMO_6",
			},
			[7] = {
				Component = "COMPONENT_SPECIALCARBINE_MK2_CAMO_07",
				Label = "WCT_CAMO_7",
			},
			[8] = {
				Component = "COMPONENT_SPECIALCARBINE_MK2_CAMO_08",
				Label = "WCT_CAMO_8",
			},
			[9] = {
				Component = "COMPONENT_SPECIALCARBINE_MK2_CAMO_09",
				Label = "WCT_CAMO_9",
			},
			[10] = {
				Component = "COMPONENT_SPECIALCARBINE_MK2_CAMO_10",
				Label = "WCT_CAMO_10",
			},
			[11] = {
				Component = "COMPONENT_SPECIALCARBINE_MK2_CAMO_IND_01",
				Label = "WCT_CAMO_IND",
			},
		},
	},
	["WEAPON_BULLPUPRIFLE"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_BULLPUPRIFLE_CLIP_01",
				Label = "WCT_CLIP1",
			},
			[2] = {
				Component = "COMPONENT_BULLPUPRIFLE_CLIP_02",
				Label = "WCT_CLIP2",
			},
		},
		["Grip"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_AFGRIP",
				Label = "WCT_GRIP",
			},
		},
		["Scope"] = {
			[1] = {
				Component = "COMPONENT_AT_SCOPE_SMALL",
				Label = "WCT_SCOPE_SML",
			},
		},
		["Tactical"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_FLSH",
				Label = "WCT_FLASH",
			},
		},
		["Muzzle"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_SUPP",
				Label = "WCT_SUPP",
			},
		},
		["Variant"] = {
			[1] = {
				Component = "COMPONENT_BULLPUPRIFLE_VARMOD_LOW",
				Label = "WCT_VAR_METAL",
			},
		},
	},
	["WEAPON_BULLPUPRIFLE_MK2"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_01",
				Label = "WCT_CLIP1",
			},
			[2] = {
				Component = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_02",
				Label = "WCT_CLIP2",
			},
			[3] = {
				Component = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_TRACER",
				Label = "WCT_CLIP_TR",
			},
			[4] = {
				Component = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_INCENDIARY",
				Label = "WCT_CLIP_INC",
			},
			[5] = {
				Component = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_ARMORPIERCING",
				Label = "WCT_CLIP_AP",
			},
			[6] = {
				Component = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_FMJ",
				Label = "WCT_CLIP_FMJ",
			},
		},
		["Grip"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_AFGRIP_02",
				Label = "WCT_GRIP",
			},
		},
		["Scope"] = {
			[1] = {
				Component = "COMPONENT_AT_SIGHTS",
				Label = "WCT_HOLO",
			},
			[2] = {
				Component = "COMPONENT_AT_SCOPE_MACRO_MK2",
				Label = "WCT_SCOPE_MAC2",
			},
			[3] = {
				Component = "COMPONENT_AT_SCOPE_SMALL_MK2",
				Label = "WCD_SCOPE_SML",
			},	
		},
		["Tactical"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_FLSH",
				Label = "WCT_FLASH",
			},
		},
		["Muzzle"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_SUPP",
				Label = "WCT_SUPP",
			},
			[2] = {
				Component = "COMPONENT_AT_MUZZLE_01",
				Label = "WCT_MUZZ1",
			},
			[3] = {
				Component = "COMPONENT_AT_MUZZLE_02",
				Label = "WCT_MUZZ2",
			},
			[4] = {
				Component = "COMPONENT_AT_MUZZLE_03",
				Label = "WCT_MUZZ3",
			},
			[5] = {
				Component = "COMPONENT_AT_MUZZLE_04",
				Label = "WCT_MUZZ4",
			},
			[6] = {
				Component = "COMPONENT_AT_MUZZLE_05",
				Label = "WCT_MUZZ5",
			},
			[7] = {
				Component = "COMPONENT_AT_MUZZLE_06",
				Label = "WCT_MUZZ6",
			},
			[8] = {
				Component = "COMPONENT_AT_MUZZLE_07",
				Label = "WCT_MUZZ7",
			},
		},
		["Variant"] = {
			[1] = {
				Component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO",
				Label = "WCT_CAMO_1",
			},
			[2] = {
				Component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_02",
				Label = "WCT_CAMO_2",
			},
			[3] = {
				Component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_03",
				Label = "WCT_CAMO_3",
			},
			[4] = {
				Component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_04",
				Label = "WCT_CAMO_4",
			},
			[5] = {
				Component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_05",
				Label = "WCT_CAMO_5",
			},
			[6] = {
				Component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_06",
				Label = "WCT_CAMO_6",
			},
			[7] = {
				Component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_07",
				Label = "WCT_CAMO_7",
			},
			[8] = {
				Component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_08",
				Label = "WCT_CAMO_8",
			},
			[9] = {
				Component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_09",
				Label = "WCT_CAMO_9",
			},
			[10] = {
				Component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_10",
				Label = "WCT_CAMO_10",
			},
			[11] = {
				Component = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_IND_01",
				Label = "WCT_CAMO_IND",
			},
		},
	},
	["WEAPON_COMPACTRIFLE"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_COMPACTRIFLE_CLIP_01",
				Label = "WCT_CLIP1",
			},
			[2] = {
				Component = "COMPONENT_COMPACTRIFLE_CLIP_02",
				Label = "WCT_CLIP2",
			},
			[3] = {
				Component = "COMPONENT_COMPACTRIFLE_CLIP_03",
				Label = "WCT_CLIP_DRM",
			},
		},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},

	["WEAPON_SNIPERRIFLE"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_HEAVYSNIPER"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_HEAVYSNIPER_MK2"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_HEAVYSNIPER_MK2_CLIP_01",
				Label = "WCT_CLIP1",
			},
			[2] = {
				Component = "COMPONENT_HEAVYSNIPER_MK2_CLIP_02",
				Label = "WCT_CLIP2",
			},
			[3] = {
				Component = "COMPONENT_HEAVYSNIPER_MK2_CLIP_TRACER",
				Label = "WCT_CLIP_TR",
			},
			[4] = {
				Component = "COMPONENT_HEAVYSNIPER_MK2_CLIP_INCENDIARY",
				Label = "WCT_CLIP_INC",
			},
			[5] = {
				Component = "COMPONENT_HEAVYSNIPER_MK2_CLIP_ARMORPIERCING",
				Label = "WCT_CLIP_AP",
			},
			[6] = {
				Component = "COMPONENT_HEAVYSNIPER_MK2_CLIP_FMJ",
				Label = "WCT_CLIP_FMJ",
			},
			[7] = {
				Component = "COMPONENT_HEAVYSNIPER_MK2_CLIP_EXPLOSIVE",
				Label = "WCT_CLIP_EX",
			},
		},
		["Grip"] = {},
		["Scope"] = {
			[1] = {
				Component = "COMPONENT_AT_SCOPE_LARGE_MK2",
				Label = "WCT_SCOPE_LRG2",
			},
			[2] = {
				Component = "COMPONENT_AT_SCOPE_MAX",
				Label = "WCT_SCOPE_MAX",
			},
			[3] = {
				Component = "COMPONENT_AT_SCOPE_NV",
				Label = "WCT_SCOPE_NV",
			},
			[4] = {
				Component = "COMPONENT_AT_SCOPE_THERMAL",
				Label = "WCT_SCOPE_TH",
			},
		},
		["Tactical"] = {},
		["Muzzle"] = {
			[1] = {
				Component = "COMPONENT_AT_SR_SUPP_03",
				Label = "WCT_SUPP",
			},
			[2] = {
				Component = "COMPONENT_AT_MUZZLE_08",
				Label = "WCT_MUZZ8",
			},
			[3] = {
				Component = "COMPONENT_AT_MUZZLE_09",
				Label = "WCT_MUZZ9",
			},
		},
		["Variant"] = {
			[1] = {
				Component = "COMPONENT_HEAVYSNIPER_MK2_CAMO",
				Label = "WCT_CAMO_1",
			},
			[2] = {
				Component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_02",
				Label = "WCT_CAMO_2",
			},
			[3] = {
				Component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_03",
				Label = "WCT_CAMO_3",
			},
			[4] = {
				Component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_04",
				Label = "WCT_CAMO_4",
			},
			[5] = {
				Component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_05",
				Label = "WCT_CAMO_5",
			},
			[6] = {
				Component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_06",
				Label = "WCT_CAMO_6",
			},
			[7] = {
				Component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_07",
				Label = "WCT_CAMO_7",
			},
			[8] = {
				Component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_08",
				Label = "WCT_CAMO_8",
			},
			[9] = {
				Component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_09",
				Label = "WCT_CAMO_9",
			},
			[10] = {
				Component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_10",
				Label = "WCT_CAMO_10",
			},
			[11] = {
				Component = "COMPONENT_HEAVYSNIPER_MK2_CAMO_IND_01",
				Label = "WCT_CAMO_IND",
			},
		},
	},
	["WEAPON_MARKSMANRIFLE"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_MARKSMANRIFLE_CLIP_01",
				Label = "WCT_CLIP1",
			},
			[2] = {
				Component = "COMPONENT_MARKSMANRIFLE_CLIP_02",
				Label = "WCT_CLIP2",
			},
		},
		["Grip"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_AFGRIP",
				Label = "WCT_GRIP",
			},
		},
		["Scope"] = {
			[1] = {
				Component = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM",
				Label = "WCT_SCOPE_LRG",
			},
		},
		["Tactical"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_FLSH",
				Label = "WCT_FLASH",
			},
		},
		["Muzzle"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_SUPP",
				Label = "WCT_SUPP",
			},
		},
		["Variant"] = {
			[1] = {
				Component = "COMPONENT_MARKSMANRIFLE_VARMOD_LUXE",
				Label = "WCT_VAR_GOLD",
			},
		},
	},
	["WEAPON_MARKSMANRIFLE_MK2"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},

	["WEAPON_UNARMED"] = {},
	["WEAPON_KNIFE"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_NIGHTSTICK"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_HAMMER"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_BAT"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_CROWBAR"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_GOLFCLUB"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_BOTTLE"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_DAGGER"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_HATCHET"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_KNUCKLE"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_MACHETE"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_FLASHLIGHT"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_SWITCHBLADE"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_BATTLEAXE"] = {},
	["WEAPON_POOLCUE"] = {},
	["WEAPON_WRENCH"] = {},

	["WEAPON_PUMPSHOTGUN"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_PUMPSHOTGUN_MK2"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_SAWNOFFSHOTGUN"] ={
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_BULLPUPSHOTGUN"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_ASSAULTSHOTGUN"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_MUSKET"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_HEAVYSHOTGUN"] = {
		["Mag"] = {
			[1] = {
				Component = "COMPONENT_HEAVYSHOTGUN_CLIP_01",
				Label = "WCT_CLIP1",
			},
			[2] = {
				Component = "COMPONENT_HEAVYSHOTGUN_CLIP_02",
				Label = "WCT_CLIP2",
			},
			[3] = {
				Component = "COMPONENT_HEAVYSHOTGUN_CLIP_03",
				Label = "WCT_CLIP_DRM",
			},
		},
		["Grip"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_AFGRIP",
				Label = "WCT_GRI{",
			},
		},
		["Scope"] = {},
		["Tactical"] = {
			[1] = {
				Component = "COMPONENT_AT_AR_FLSH",
				Label = "WCT_FLASH",
			},
		},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_DBSHOTGUN"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_AUTOSHOTGUN"] = {},

	["WEAPON_GRENADELAUNCHER"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_RPG"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_MINIGUN"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_FIREWORK"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_RAILGUN"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_HOMINGLAUNCHER"] = {},
	["WEAPON_COMPACTLAUNCHER"] = {},

	["WEAPON_GRENADE"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_STICKYBOMB"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_PROXMINE"] = {},
	["WEAPON_PIPEBOMB"] = {},
	["WEAPON_SMOKEGRENADE"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_BZGAS"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_MOLOTOV"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_FIREEXTINGUISHER"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_PETROLCAN"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_BALL"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_SNOWBALL"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_FLARE"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_REMOTESNIPER"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_DIGISCANNER"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_GRENADELAUNCHER_SMOKE"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_STINGER"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_ELECTRIC_FENCE"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},

	["WEAPON_ANIMAL"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_COUGAR"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_PASSENGER_ROCKET"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_AIRSTRIKE_ROCKET"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_BRIEFCASE"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_BRIEFCASE_02"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_VEHICLE_ROCKET"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_BARBED_WIRE"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_DROWNING"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_DROWNING_IN_VEHICLE"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_BLEEDING"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_EXPLOSION"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_FALL"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_EXHAUSTION"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_HIT_BY_WATER_CANNON"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_RAMMED_BY_CAR"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_RUN_OVER_BY_CAR"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_HELI_CRASH"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["WEAPON_FIRE"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},

	["VEHICLE_WEAPON_TANK"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["VEHICLE_WEAPON_SPACE_ROCKET"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["VEHICLE_WEAPON_PLANE_ROCKET"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["VEHICLE_WEAPON_PLAYER_LASER"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["VEHICLE_WEAPON_PLAYER_BULLET"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["VEHICLE_WEAPON_PLAYER_BUZZARD"] ={
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["VEHICLE_WEAPON_PLAYER_HUNTER"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["VEHICLE_WEAPON_PLAYER_LAZER"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["VEHICLE_WEAPON_ENEMY_LASER"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},

	["VEHICLE_WEAPON_SEARCHLIGHT"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["VEHICLE_WEAPON_RADAR"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["VEHICLE_WEAPON_ROTORS"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},

	["GADGET_NIGHTVISION"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
	["GADGET_PARACHUTE"] = {
		["Mag"] = {},
		["Grip"] = {},
		["Scope"] = {},
		["Tactical"] = {},
		["Muzzle"] = {},
		["Variant"] = {},
	},
}