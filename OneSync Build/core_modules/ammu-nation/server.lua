--[[
	Script created by: Frazzle

	Contact: frazzle9999@gmail.com

	Note: this script is licensed under "No License", you are allowed to:

	Use and Edit the Script.

	you are not allowed to:

	Copy, re-release, re-distribute it without my written permission.
--]]
local license_cost = 10000
max_weapons = 6
user_weapons = {}
Weapons = {
	["WEAPON_PISTOL"] = 750,
	["WEAPON_COMBATPISTOL"] = 1000,
	["WEAPON_PISTOL50"] = 1000,
	["WEAPON_HEAVYPISTOL"] = 1000,
	["WEAPON_SNSPISTOL"] = 750,
	["WEAPON_APPISTOL"] = 2500,
	["WEAPON_VINTAGEPISTOL"] = 750,
	["WEAPON_REVOLVER"] = 1,
	["WEAPON_MARKSMANPISTOL"] = 1,
	["WEAPON_FLAREGUN"] = 1,
	["WEAPON_STUNGUN"] = 300,

	["WEAPON_MINISMG"] = 1,
	["WEAPON_MACHINEPISTOL"] = 1,
	["WEAPON_COMBATPDW"] = 1,
	["WEAPON_MICROSMG"] = 1,
	["WEAPON_SMG"] = 1,
	["WEAPON_ASSAULTSMG"] = 1,
	["WEAPON_GUSENBERG"] = 1,
	["WEAPON_COMBATMG"] = 1,
	["WEAPON_MG"] = 1,

	["WEAPON_COMPACTRIFLE"] = 1,
	["WEAPON_ADVANCEDRIFLE"] = 1,
	["WEAPON_ASSAULTRIFLE"] = 1,
	["WEAPON_BULLPUPRIFLE"] = 1,
	["WEAPON_CARBINERIFLE"] = 1,
	["WEAPON_SPECIALCARBINE"] = 1,

	["WEAPON_SNIPERRIFLE"] = 1,
	["WEAPON_HEAVYSNIPER"] = 1,
	["WEAPON_MARKSMANRIFLE"] = 1,

	["WEAPON_KNIFE"] = 100,
	["WEAPON_FLASHLIGHT"] = 100,
	["WEAPON_NIGHTSTICK"] = 1000,
	["WEAPON_HAMMER"] = 75,
	["WEAPON_BAT"] = 150,
	["WEAPON_GOLFCLUB"] = 150,
	["WEAPON_CROWBAR"] = 150,
	["WEAPON_BOTTLE"] = 75,
	["WEAPON_DAGGER"] = 75,
	["WEAPON_KNUCKLE"] = 500,
	["WEAPON_HATCHET"] = 75,
	["WEAPON_MACHETE"] = 150,
	["WEAPON_SWITCHBLADE"] = 150,
	["WEAPON_BATTLEAXE"] = 150,
	["WEAPON_POOLCUE"] = 100,
	["WEAPON_WRENCH"] = 100,

	["WEAPON_SAWNOFFSHOTGUN"] = 1750,
	["WEAPON_DBSHOTGUN"] = 1500,
	["WEAPON_AUTOSHOTGUN"] = 1,
	["WEAPON_PUMPSHOTGUN"] = 1500,
	["WEAPON_ASSAULTSHOTGUN"] = 1,
	["WEAPON_BULLPUPSHOTGUN"] = 1,
	["WEAPON_HEAVYSHOTGUN"] = 1,
	["WEAPON_MUSKET"] = 1,

	["WEAPON_GRENADELAUNCHER"] = 1,
	["WEAPON_COMPACTLAUNCHER"] = 1,
	["WEAPON_RAILGUN"] = 1,
	["WEAPON_HOMINGLAUNCHER"] = 1,
	["WEAPON_MINIGUN"] = 1,
	["WEAPON_RPG"] = 1,
	["WEAPON_FIREWORK"] = 1,

	["WEAPON_BZGAS"] = 1,
	["WEAPON_MOLOTOV"] = 1,
	["WEAPON_SMOKEGRENADE"] = 1,
	["WEAPON_STICKYBOMB"] = 1,
	["WEAPON_GRENADE"] = 1,
	["WEAPON_BALL"] = 50,
	["WEAPON_FLARE"] = 1,
	["WEAPON_PROXMINE"] = 1,
	["WEAPON_PIPEBOMB"] = 1,
	["WEAPON_PETROLCAN"] = 40,
	["WEAPON_SNOWBALL"] = 1,

	["WEAPON_DIGISCANNER"] = 1,
	["WEAPON_REMOTESNIPER"] = 1,

	["GADGET_PARACHUTE"] = 500,
}
BlackMarket_Weapons = {
	["WEAPON_PISTOL"] = 750,
	["WEAPON_COMBATPISTOL"] = 1000,
	["WEAPON_PISTOL50"] = 1000,
	["WEAPON_HEAVYPISTOL"] = 1000,
	["WEAPON_SNSPISTOL"] = 1000,
	["WEAPON_APPISTOL"] = 2500,
	["WEAPON_VINTAGEPISTOL"] = 750,
	["WEAPON_REVOLVER"] = 1,
	["WEAPON_MARKSMANPISTOL"] = 1,
	["WEAPON_FLAREGUN"] = 1,
	["WEAPON_STUNGUN"] = 500,

	["WEAPON_MINISMG"] = 1000,
	["WEAPON_MACHINEPISTOL"] = 1050,
	["WEAPON_COMBATPDW"] = 2000,
	["WEAPON_MICROSMG"] = 1750,
	["WEAPON_SMG"] = 2150,
	["WEAPON_ASSAULTSMG"] = 2150,
	["WEAPON_GUSENBERG"] = 2500,
	["WEAPON_COMBATMG"] = 5000,
	["WEAPON_MG"] = 1,

	["WEAPON_COMPACTRIFLE"] = 2250,
	["WEAPON_ADVANCEDRIFLE"] = 2250,
	["WEAPON_ASSAULTRIFLE"] = 3000,
	["WEAPON_BULLPUPRIFLE"] = 4000,
	["WEAPON_CARBINERIFLE"] = 1,
	["WEAPON_SPECIALCARBINE"] = 1,

	["WEAPON_SNIPERRIFLE"] = 50000,
	["WEAPON_HEAVYSNIPER"] = 1,
	["WEAPON_MARKSMANRIFLE"] = 50000,

	["WEAPON_KNIFE"] = 100,
	["WEAPON_FLASHLIGHT"] = 100,
	["WEAPON_NIGHTSTICK"] = 1000,
	["WEAPON_HAMMER"] = 100,
	["WEAPON_BAT"] = 150,
	["WEAPON_GOLFCLUB"] = 150,
	["WEAPON_CROWBAR"] = 150,
	["WEAPON_BOTTLE"] = 75,
	["WEAPON_DAGGER"] = 75,
	["WEAPON_KNUCKLE"] = 150,
	["WEAPON_HATCHET"] = 75,
	["WEAPON_MACHETE"] = 150,
	["WEAPON_SWITCHBLADE"] = 150,
	["WEAPON_BATTLEAXE"] = 300,
	["WEAPON_POOLCUE"] = 50,
	["WEAPON_WRENCH"] = 30,

	["WEAPON_SAWNOFFSHOTGUN"] = 1200,
	["WEAPON_DBSHOTGUN"] = 1700,
	["WEAPON_AUTOSHOTGUN"] = 1,
	["WEAPON_PUMPSHOTGUN"] = 1500,
	["WEAPON_ASSAULTSHOTGUN"] = 1,
	["WEAPON_BULLPUPSHOTGUN"] = 1750,
	["WEAPON_HEAVYSHOTGUN"] = 2250,
	["WEAPON_MUSKET"] = 1,

	["WEAPON_GRENADELAUNCHER"] = 1,
	["WEAPON_COMPACTLAUNCHER"] = 1,
	["WEAPON_RAILGUN"] = 1,
	["WEAPON_HOMINGLAUNCHER"] = 1,
	["WEAPON_MINIGUN"] = 1,
	["WEAPON_RPG"] = 1,
	["WEAPON_FIREWORK"] = 1,

	["WEAPON_BZGAS"] = 1,
	["WEAPON_MOLOTOV"] = 150,
	["WEAPON_SMOKEGRENADE"] = 1,
	["WEAPON_STICKYBOMB"] = 1,
	["WEAPON_GRENADE"] = 1,
	["WEAPON_BALL"] = 50,
	["WEAPON_FLARE"] = 1,
	["WEAPON_PROXMINE"] = 1,
	["WEAPON_PIPEBOMB"] = 1,
	["WEAPON_PETROLCAN"] = 100,
	["WEAPON_SNOWBALL"] = 1,

	["WEAPON_DIGISCANNER"] = 1,
	["WEAPON_REMOTESNIPER"] = 1,

	["GADGET_PARACHUTE"] = 500,
}
PoliceWeapons = {
	["WEAPON_PISTOL"] = 50,
	["WEAPON_COMBATPISTOL"] = 100,
	["WEAPON_STUNGUN"] = 50,
	["WEAPON_FLASHLIGHT"] = 10,
	["WEAPON_NIGHTSTICK"] = 10,
	["WEAPON_CARBINERIFLE"] = 100,
	["WEAPON_PUMPSHOTGUN"] = 100,
}
Attachments_Cost = {
	["Suppressor"] = {100, 200},
	["Flashlight"] = {300, 872},
	["Extended clip"] = {190, 217},
	["Scope"] = {100, 147},
	["Grip"] = {300, 864},
	["Advanced Scope"] = {250, 317},
	["Yusuf Amir Luxury Finish"] = {300, 400},
	["Platinum Pearl Deluxe Finish"] = {300, 400},
	["Etched Wood Grip Finish"] = {100, 200},
	["Gilded Gun Metal Finish"] = {200, 300},
	["Eteched Gun Metal Finish"] = {200, 300},
	["Bodyguard Variant"] = {100, 160},
	["VIP Variant"] = {300, 400},
	["Black tint"] = {100, 200},
	["Army tint"] = {100, 200},
	["Green tint"] = {100, 200},
	["Orange tint"] = {100, 000},
	["LSPD tint"] = {100, 200},
	["Pink tint"] = {100, 200},
	["Gold tint"] = {000, 400},
	["Platinum tint"] = {300, 400},
	["Base Model"] = {50, 100},
	["The Pimp"] = {500, 800},
	["The Ballas"] = {500, 800},
	["The Hustler"] = {500, 800},
	["The Rock"] = {500, 800},
	["The Hater"] = {500, 800},
	["The Lover"] = {500, 800},
	["The Player"] = {500, 800},
	["The King"] = {500, 800},
	["The Vagos"] = {500, 800},
	["No tint"] = {1000, 2000},
	["Rainbow tint"] = {1000, 2000},
	["Red tint"] = {1000, 2000},
	["Seaside Stripes tint"] = {1000, 2000},
	["Widow Maker tint"] = {1000, 2000},
	["Patriot tint"] = {1000, 2000},
	["Blue tint"] = {1000, 2000},
	["Hornet tint"] = {1000, 2000},
	["Air force tint"] = {1000, 2000},
	["Desert tint"] = {1000, 2000},
	["Shadow tint"] = {1000, 2000},
	["High Altitude tint"] = {1000, 2000},
	["Airborne tint"] = {1000, 2000},
	["Sunrise tint"] = {1000, 2000},
}
Ammo = {
	["WEAPON_PISTOL"] = {Name = "Rounds x ", Amount = 24, Cost = 40, Max = 250},
	["WEAPON_COMBATPISTOL"] = {Name = "Rounds x ", Amount = 24, Cost = 40, Max = 250},
	["WEAPON_PISTOL50"] = {Name = "Rounds x ", Amount = 24, Cost = 40, Max = 250},
	["WEAPON_HEAVYPISTOL"] = {Name = "Rounds x ", Amount = 24, Cost = 40, Max = 250},
	["WEAPON_SNSPISTOL"] = {Name = "Rounds x ", Amount = 24, Cost = 40, Max = 250},
	["WEAPON_APPISTOL"] = {Name = "Rounds x ", Amount = 32, Cost = 45, Max = 250},
	["WEAPON_VINTAGEPISTOL"] = {Name = "Rounds x ", Amount = 24, Cost = 40, Max = 250},
	["WEAPON_REVOLVER"] = {Name = "Rounds x ", Amount = 24, Cost = 60, Max = 250},
	["WEAPON_MARKSMANPISTOL"] = {Name = "Rounds x ", Amount = 24, Cost = 100, Max = 250},
	["WEAPON_FLAREGUN"] = {Name = "Rounds x ", Amount = 20, Cost = 100, Max = 20},

	["WEAPON_MINISMG"] = {Name = "Rounds x ", Amount = 32, Cost = 60, Max = 250},
	["WEAPON_MACHINEPISTOL"] = {Name = "Rounds x ", Amount = 32, Cost = 60, Max = 250},
	["WEAPON_COMBATPDW"] = {Name = "Rounds x ", Amount = 60, Cost = 120, Max = 250},
	["WEAPON_MICROSMG"] = {Name = "Rounds x ", Amount = 32, Cost = 60, Max = 250},
	["WEAPON_SMG"] = {Name = "Rounds x ", Amount = 60, Cost = 120, Max = 250},
	["WEAPON_ASSAULTSMG"] = {Name = "Rounds x ", Amount = 60, Cost = 120, Max = 250},
	["WEAPON_GUSENBERG"] = {Name = "Rounds x ", Amount = 60, Cost = 120, Max = 250},
	["WEAPON_COMBATMG"] = {Name = "Rounds x ", Amount = 80, Cost = 180, Max = 250},
	["WEAPON_MG"] = {Name = "Rounds x ", Amount = 80, Cost = 180, Max = 250},

	["WEAPON_COMPACTRIFLE"] = {Name = "Rounds x ", Amount = 60, Cost = 140, Max = 250},
	["WEAPON_ADVANCEDRIFLE"] = {Name = "Rounds x ", Amount = 60, Cost = 140, Max = 250},
	["WEAPON_ASSAULTRIFLE"] = {Name = "Rounds x ", Amount = 60, Cost = 140, Max = 250},
	["WEAPON_BULLPUPRIFLE"] = {Name = "Rounds x ", Amount = 60, Cost = 140, Max = 250},
	["WEAPON_CARBINERIFLE"] = {Name = "Rounds x ", Amount = 60, Cost = 140, Max = 250},
	["WEAPON_SPECIALCARBINE"] = {Name = "Rounds x ", Amount = 60, Cost = 140, Max = 250},

	["WEAPON_SNIPERRIFLE"] = {Name = "Rounds x ", Amount = 12, Cost = 140, Max = 250},
	["WEAPON_HEAVYSNIPER"] = {Name = "Rounds x ", Amount = 12, Cost = 140, Max = 250},
	["WEAPON_MARKSMANRIFLE"] = {Name = "Rounds x ", Amount = 12, Cost = 140, Max = 250},

	["WEAPON_SAWNOFFSHOTGUN"] = {Name = "Cartridges x ", Amount = 16, Cost = 30, Max = 250},
	["WEAPON_DBSHOTGUN"] = {Name = "Cartridges x ", Amount = 16, Cost = 30, Max = 250},
	["WEAPON_AUTOSHOTGUN"] = {Name = "Cartridges x ", Amount = 16, Cost = 30, Max = 250},
	["WEAPON_PUMPSHOTGUN"] = {Name = "Cartridges x ", Amount = 16, Cost = 30, Max = 250},
	["WEAPON_ASSAULTSHOTGUN"] = {Name = "Cartridges x ", Amount = 16, Cost = 30, Max = 250},
	["WEAPON_BULLPUPSHOTGUN"] = {Name = "Cartridges x ", Amount = 16, Cost = 30, Max = 250},
	["WEAPON_HEAVYSHOTGUN"] = {Name = "Cartridges x ", Amount = 16, Cost = 30, Max = 250},
	["WEAPON_MUSKET"] = {Name = "Rounds x ", Amount = 10, Cost = 30, Max = 250},

	["WEAPON_GRENADELAUNCHER"] = {Name = "Grenades x ", Amount = 10, Cost = 300, Max = 20},
	["WEAPON_COMPACTLAUNCHER"] = {Name = "Grenades x ", Amount = 10, Cost = 300, Max = 20},
	["WEAPON_RAILGUN"] = {Name = "Rounds x ", Amount = 10, Cost = 900, Max = 20},
	["WEAPON_HOMINGLAUNCHER"] = {Name = "Rockets x ", Amount = 1, Cost = 300, Max = 10},
	["WEAPON_MINIGUN"] = {Name = "Rounds x ", Amount = 20, Cost = 50, Max = 200},
	["WEAPON_RPG"] = {Name = "Rockets x ", Amount = 1, Cost = 300, Max = 20},
	["WEAPON_FIREWORK"] = {Name = "Rockets x ", Amount = 1, Cost = 100, Max = 20},

	["WEAPON_BZGAS"] = {Name = "Gas x ", Amount = 1, Cost = 40, Max = 25},
	["WEAPON_MOLOTOV"] = {Name = "Molotov x ", Amount = 1, Cost = 40, Max = 25},
	["WEAPON_SMOKEGRENADE"] = {Name = "Gas x ", Amount = 1, Cost = 40, Max = 25},
	["WEAPON_STICKYBOMB"] = {Name = "Stickybomb x ", Amount = 1, Cost = 100, Max = 25},
	["WEAPON_GRENADE"] = {Name = "Grenade x ", Amount = 1, Cost = 30, Max = 25},
	["WEAPON_BALL"] = {Name = "Ball x ", Amount = 1, Cost = 10, Max = 1},
	["WEAPON_FLARE"] = {Name = "Flare x ", Amount = 1, Cost = 10, Max = 25},
	["WEAPON_PROXMINE"] = {Name = "Mine x ", Amount = 1, Cost = 75, Max = 5},
	["WEAPON_PIPEBOMB"] = {Name = "Bomb x ", Amount = 1, Cost = 50, Max = 10},
	["WEAPON_SNOWBALL"] = {Name = "Snowball x ", Amount = 1, Cost = 2, Max = 10},
	["WEAPON_PETROLCAN"] = {Name = "Gas x 1ml", Amount = 45, Cost = 2, Max = 4500},

}
Skins = {
	["Yusuf Amir Luxury Finish"] = 1,
	["Platinum Pearl Deluxe Finish"] = 1,
	["Etched Wood Grip Finish"] = 1,
	["Gilded Gun Metal Finish"] = 1,
	["Eteched Gun Metal Finish"] = 1,
	["Bodyguard Variant"] = 1,
	["VIP Variant"] = 1,
	["Black tint"] = 1,
	["Army tint"] = 1,
	["Green tint"] = 1,
	["Orange tint"] = 1,
	["LSPD tint"] = 1,
	["Pink tint"] = 1,
	["Gold tint"] = 1,
	["Platinum tint"] = 1,
	["Base Model"] = 1,
	["The Pimp"] = 1,
	["The Ballas"] = 1,
	["The Hustler"] = 1,
	["The Rock"] = 1,
	["The Hater"] = 1,
	["The Lover"] = 1,
	["The Player"] = 1,
	["The King"] = 1,
	["The Vagos"] = 1,
	["No tint"] = 1,
	["Rainbow tint"] = 1,
	["Red tint"] = 1,
	["Seaside Stripes tint"] = 1,
	["Widow Maker tint"] = 1,
	["Patriot tint"] = 1,
	["Blue tint"] = 1,
	["Hornet tint"] = 1,
	["Air force tint"] = 1,
	["Desert tint"] = 1,
	["Shadow tint"] = 1,
	["High Altitude tint"] = 1,
	["Airborne tint"] = 1,
	["Sunrise tint"] = 1,
}

local GunStash_Inventory = {}
RegisterServerEvent("weapon:initialise")
AddEventHandler("weapon:initialise",function(source, identifier, character_id)
	exports["GHMattiMySQL"]:QueryResultAsync("SELECT * from weapons WHERE pd_stash = 0 AND character_id=@character_id", {["@character_id"] = character_id}, function(weapons)
		if weapons[1] == nil then
			user_weapons[source] = weapons
			TriggerClientEvent("weapon:set", source, user_weapons[source])
			TriggerClientEvent("weapon:sync", -1, user_weapons)
		else
			local weapons_setup = {}
			for k,v in pairs(weapons) do
				weapons_setup[v.model] = { id = v.id, character_id = v.character_id, sellprice = v.sellprice, model = v.model, ammo = v.ammo, suppressor = v.suppressor, flashlight = v.flashlight, extended_clip = v.extended_clip, scope = v.scope, grip = v.grip, advanced_scope = v.advanced_scope, skin = v.skin, owner = v.owner }
			end
			user_weapons[source] = weapons_setup
			TriggerClientEvent("weapon:set", source, user_weapons[source])
			TriggerClientEvent("weapon:sync", -1, user_weapons)
		end
	end)
end)

RegisterServerEvent("GunStash.InitialiseInventory")
AddEventHandler("GunStash.InitialiseInventory", function(Source)
	exports["GHMattiMySQL"]:QueryResultAsync("SELECT * FROM gunstash_inventory", {}, function(Inventory)
		if Inventory[1] ~= nil then
			GunStash_Inventory = Inventory
		end
	end)
end)

RegisterServerEvent("weapon:buy")
AddEventHandler("weapon:buy", function(model, pd)
	local weap = pd and PoliceWeapons[model] or Weapons[model]
	local source = source

	if weap ~= nil then
        if tablelength(user_weapons[source]) < max_weapons then
            TriggerEvent("core:getuser", source, function(user)
                if user.get("wallet") >= weap then
                    user.removeWallet(weap)
                    exports["GHMattiMySQL"]:Insert("weapons", {
                        {
                            ["character_id"] = user.get("characterID"),
                            ["sellprice"] = weap/2,
                            ["model"] = model,
                            ["ammo"] = 0,
                            ["suppressor"] = "false",
                            ["flashlight"] = "false",
                            ["extended_clip"] = "false",
                            ["scope"] = "false",
                            ["grip"] = "false",
                            ["advanced_scope"] = "false",
                            ["skin"] = 0,
                            ["owner"] = user.get("characterID"),
                        }
                    }, function(weapon_id)
                        user_weapons[source][model] = { id = weapon_id, character_id = user.get("characterID"), sellprice = weap/2, model = model, ammo = 0, suppressor = "false", flashlight = "false", extended_clip = "false", scope = "false", grip = "false", advanced_scope = "false", skin = 0, owner = user.get("characterID")}
                        TriggerClientEvent("weapon:set", source, user_weapons[source])
                        TriggerClientEvent("weapon:give", source)
                        TriggerClientEvent("weapon:sync", -1, user_weapons)
                        TriggerEvent("weapon:sync", user_weapons)
                    end, true)
                elseif user.get("bank") >= weap then
                    user.removeBank(weap)
                    exports["GHMattiMySQL"]:Insert("weapons", {
                        {
                            ["character_id"] = user.get("characterID"),
                            ["sellprice"] = weap/2,
                            ["model"] = model,
                            ["ammo"] = 0,
                            ["suppressor"] = "false",
                            ["flashlight"] = "false",
                            ["extended_clip"] = "false",
                            ["scope"] = "false",
                            ["grip"] = "false",
                            ["advanced_scope"] = "false",
                            ["skin"] = 0,
                            ["owner"] = user.get("characterID"),
                        }
                    }, function(weapon_id)
                        user_weapons[source][model] = { id = weapon_id, character_id = user.get("characterID"), sellprice = weap/2, model = model, ammo = 0, suppressor = "false", flashlight = "false", extended_clip = "false", scope = "false", grip = "false", advanced_scope = "false", skin = 0, owner = user.get("characterID")}
                        TriggerClientEvent("weapon:set", source, user_weapons[source])
                        TriggerClientEvent("weapon:give", source)
                        TriggerClientEvent("weapon:sync", -1, user_weapons)
                        TriggerEvent("weapon:sync", user_weapons)
                    end, true)
                else
                    Notify("Insufficient funds!", 3000, source)
                end
            end)
        else
            TriggerClientEvent("customNotification", "The maximum number of weapons you can carry is "..max_weapons)
        end
    end
end)

RegisterServerEvent("weapon:buy_illegal")
AddEventHandler("weapon:buy_illegal", function(model)
	local source = source
	if tablelength(user_weapons[source]) < max_weapons then
		TriggerEvent("core:getuser", source, function(user)
			local Index = 0
			for k, v in pairs(GunStash_Inventory) do
				if model == v.name then
					Index = k
				end
			end
			if Index == 0 then Index = 1 end
			if GunStash_Inventory[Index].amount > 0 then
				if user.get("wallet") >= BlackMarket_Weapons[model] then
					user.removeWallet(BlackMarket_Weapons[model])
					exports["GHMattiMySQL"]:Insert("weapons", {
						{
							["character_id"] = user.get("characterID"),
							["sellprice"] = BlackMarket_Weapons[model],
							["model"] = model,
							["ammo"] = 0,
							["suppressor"] = "false",
							["flashlight"] = "false",
							["extended_clip"] = "false",
							["scope"] = "false",
							["grip"] = "false",
							["advanced_scope"] = "false",
							["skin"] = 0,
							["owner"] = 0,
						}
					}, function(weapon_id)
						user_weapons[source][model] = { id = weapon_id, character_id = user.get("characterID"), sellprice = BlackMarket_Weapons[model], model = model, ammo = 0, suppressor = "false", flashlight = "false", extended_clip = "false", scope = "false", grip = "false", advanced_scope = "false", skin = 0, owner = 0}
						TriggerClientEvent("weapon:set", source, user_weapons[source])
						TriggerClientEvent("weapon:give", source)
						TriggerClientEvent("weapon:sync", -1, user_weapons)
						TriggerEvent("weapon:sync", user_weapons)
						GunStash_Inventory[Index].amount = GunStash_Inventory[Index].amount - 1
						exports["GHMattiMySQL"]:QueryAsync("UPDATE gunstash_inventory SET amount = @amount WHERE ( name = @model )", {
							["@amount"] = GunStash_Inventory[Index].amount,
							["@model"] = model,
						})
					end, true)
				else
					Notify("Insufficient funds!", 3000, source)
				end
			else
				Notify("That weapon supply has ran out!", 3100, source)
			end
		end)
	else
		TriggerClientEvent("customNotification", "The maximum number of weapons you can carry is "..max_weapons)
	end
end)

RegisterServerEvent("weapon:buyattachment")
AddEventHandler("weapon:buyattachment", function(model, attachment, cost, hash)
	local source = source
	if Attachments_Cost[attachment] then
		if cost < Attachments_Cost[attachment][1] or cost > Attachments_Cost[attachment][2] then
			cost = math.random(Attachments_Cost[attachment][1], Attachments_Cost[attachment][2])
			cost = math.floor(cost)
		end
		if Skins[attachment] then
			attachment = "skin"
		else
			attachment = attachment:lower()
			attachment = string.gsub(attachment, " ", "_")
		end
		TriggerEvent("core:getuser", source, function(user)
			if user.get("wallet") >= cost then
				user.removeWallet(cost)
				exports["GHMattiMySQL"]:QueryAsync("UPDATE weapons SET "..attachment.."=@attachment, sellprice=@sellprice WHERE (character_id=@character_id) AND (model=@model) AND (pd_stash = 0)", {
					["@character_id"] = user.get("characterID"),
					["@sellprice"] = user_weapons[source][model].sellprice + math.floor((cost/2)),
					["@model"] = model,
					["@attachment"] = hash
				})
				user_weapons[source][model].sellprice = user_weapons[source][model].sellprice + math.floor((cost/2))
				user_weapons[source][model][attachment] = hash
				TriggerClientEvent("weapon:set", source, user_weapons[source])
				TriggerClientEvent("weapon:give", source)
				TriggerClientEvent("weapon:sync", -1, user_weapons)
				TriggerEvent("weapon:sync", user_weapons)
			elseif user.get("bank") >= cost then
				user.removeBank(cost)
				exports["GHMattiMySQL"]:QueryAsync("UPDATE weapons SET "..attachment.."=@attachment, sellprice=@sellprice WHERE (character_id=@character_id) AND (model=@model) AND (pd_stash = 0)", {
					["@character_id"] = user.get("characterID"),
					["@sellprice"] = user_weapons[source][model].sellprice + math.floor((cost/2)),
					["@model"] = model,
					["@attachment"] = hash,
				})
				user_weapons[source][model].sellprice = user_weapons[source][model].sellprice + math.floor((cost/2))
				user_weapons[source][model][attachment] = hash
				TriggerClientEvent("weapon:set", source, user_weapons[source])
				TriggerClientEvent("weapon:give", source)
				TriggerClientEvent("weapon:sync", -1, user_weapons)
				TriggerEvent("weapon:sync", user_weapons)
			end
		end)
	end
end)

RegisterServerEvent("weapon:buyammo")
AddEventHandler("weapon:buyammo", function(model)
	local source = source
	TriggerEvent("core:getuser", source, function(user)
		if user.get("wallet") >= Ammo[model].Cost then
			user.removeWallet(Ammo[model].Cost)
			user_weapons[source][model].ammo = tonumber(user_weapons[source][model].ammo) + Ammo[model].Amount
			exports["GHMattiMySQL"]:QueryAsync("UPDATE weapons SET ammo=@ammo WHERE (character_id=@character_id) AND (model=@model) AND (pd_stash = 0)", {
				["@character_id"] = user.get("characterID"),
				["@model"] = model,
				["@ammo"] = user_weapons[source][model].ammo,
			})
			TriggerClientEvent("weapon:set", source, user_weapons[source])
			TriggerClientEvent("weapon:give", source)
			TriggerClientEvent("weapon:sync", -1, user_weapons)
			TriggerEvent("weapon:sync", user_weapons)
		elseif user.get("bank") >= Ammo[model].Cost then
			user.removeBank(Ammo[model].Cost)
			user_weapons[source][model].ammo = tonumber(user_weapons[source][model].ammo) + Ammo[model].Amount
			exports["GHMattiMySQL"]:QueryAsync("UPDATE weapons SET ammo=@ammo WHERE (character_id=@character_id) AND (model=@model) AND (pd_stash = 0)", {
				["@character_id"] = user.get("characterID"),
				["@model"] = model,
				["@ammo"] = user_weapons[source][model].ammo,
			})
			TriggerClientEvent("weapon:set", source, user_weapons[source])
			TriggerClientEvent("weapon:give", source)
			TriggerClientEvent("weapon:sync", -1, user_weapons)
			TriggerEvent("weapon:sync", user_weapons)
		end
	end)
end)

RegisterServerEvent("weapon:refillammo")
AddEventHandler("weapon:refillammo", function(model)
	local source = source
	TriggerEvent("core:getuser", source, function(user)
		user_weapons[source][model].ammo = Ammo[model].Max
		exports["GHMattiMySQL"]:QueryAsync("UPDATE weapons SET ammo=@ammo WHERE (character_id=@character_id) AND (model=@model) AND (pd_stash = 0)", {
			["@character_id"] = user.get("characterID"),
			["@model"] = model,
			["@ammo"] = user_weapons[source][model].ammo,
		})
		TriggerClientEvent("weapon:set", source, user_weapons[source])
		TriggerClientEvent("weapon:give", source)
		TriggerClientEvent("weapon:sync", -1, user_weapons)
		TriggerEvent("weapon:sync", user_weapons)
	end)
end)

RegisterServerEvent("weapon:buylicense")
AddEventHandler("weapon:buylicense", function()
	local source = source
	TriggerEvent("core:getuser", source, function(user)
		if user.get("wallet") >= license_cost then
			user.removeWallet(license_cost)
			user.set("weapon_license", "true")
			TriggerClientEvent("weapon:set_license", source, "true")
		elseif user.get("bank") >= license_cost then
			user.removeBank(license_cost)
			user.set("weapon_license", "true")
			TriggerClientEvent("weapon:set_license", source, "true")
		end
	end)
end)

RegisterServerEvent("weapon:givelicense")
AddEventHandler("weapon:givelicense", function(target)
	local source = source
	TriggerEvent("core:getuser", target, function(user)
		if user.get("weapon_license") == "false" then
			user.set("weapon_license", "true")
			TriggerClientEvent("weapon:set_license", target, "true")
			Notify("You gave a weapon license to "..user.get("first_name").." "..user.get("last_name"), 3500, source)
			Notify("You received your license to carry firearms", 3500, target)
		else
			Notify(user.get("first_name").." "..user.get("last_name").." already has a license!", 3500, source)
		end
	end)
end)

RegisterServerEvent("weapon:updateammo")
AddEventHandler("weapon:updateammo", function(model, ammo)
	local source = source
	TriggerEvent("core:getuser", source, function(user)
		exports["GHMattiMySQL"]:QueryAsync("UPDATE weapons SET ammo=@ammo WHERE (character_id=@character_id) AND (model=@model) AND (pd_stash = 0)", {
			["@character_id"] = user.get("characterID"),
			["@model"] = model,
			["@ammo"] = ammo,
		})
	end)
	if user_weapons[source] then
		if user_weapons[source][model] then
			user_weapons[source][model].ammo = tonumber(ammo)
		else
			error("Error: "..model.." doesn't exist but the dood has it, "..GetPlayerName(source))
		end
	end
end)

RegisterServerEvent("weapon:sell")
AddEventHandler("weapon:sell", function(model)
	local source = source
	TriggerEvent("core:getuser", source, function(user)
		user.addWallet(tonumber(user_weapons[source][model].sellprice))
		exports["GHMattiMySQL"]:QueryAsync("DELETE FROM weapons WHERE (character_id=@character_id) AND (model=@model) AND (pd_stash = 0)", {
			["@character_id"] = user.get("characterID"),
			["@model"] = model,
		})
		user_weapons[source][model] = nil
		TriggerClientEvent("weapon:set", source, user_weapons[source])
		TriggerClientEvent("weapon:give", source)
		TriggerClientEvent("weapon:sync", -1, user_weapons)
		TriggerEvent("weapon:sync", user_weapons)
	end)
end)

RegisterServerEvent("weapon:give")
AddEventHandler("weapon:give", function(model, target)
	local source = source
	if user_weapons[source][model] then
		if not user_weapons[target][model] then
			if tablelength(user_weapons[target]) < max_weapons then
				TriggerEvent("core:getuser", target, function(user)
					exports["GHMattiMySQL"]:QueryAsync("UPDATE weapons SET character_id=@new_character_id WHERE (character_id=@character_id) AND (model=@model) AND (pd_stash = 0)", {
						["@character_id"] = user_weapons[source][model].character_id,
						["@model"] = user_weapons[source][model].model,
						["@new_character_id"] = user.get("characterID"),
					})
					user_weapons[target][model] = user_weapons[source][model]
					user_weapons[target][model].character_id = user.get("characterID")
					user_weapons[source][model] = nil
					TriggerClientEvent("weapon:set", source, user_weapons[source])
					TriggerClientEvent("weapon:give", source)
					TriggerClientEvent("weapon:set", target, user_weapons[target])
					TriggerClientEvent("weapon:give", target)
					TriggerClientEvent("weapon:sync", -1, user_weapons)
					TriggerEvent("weapon:sync", user_weapons)
				end)
			else
				Notify("This user cannot hold anymore weapons", 3000, source)
			end
		else
			Notify("This user already has this weapon", 3000, source)
		end
	else
		Notify("You don't have this weapon", 3000, source)
	end
end)

RegisterServerEvent("weapon:take")
AddEventHandler("weapon:take", function(model, target)
	local source = source
	if user_weapons[target] then
		if user_weapons[target][model] then
			if not user_weapons[source][model] then
				if tablelength(user_weapons[source]) < max_weapons then
					TriggerEvent("core:getuser", source, function(user)
						exports["GHMattiMySQL"]:QueryAsync("UPDATE weapons SET character_id=@new_character_id WHERE (character_id=@character_id) AND (model=@model) AND (pd_stash = 0)", {
							["@character_id"] = user_weapons[target][model].character_id,
							["@model"] = user_weapons[target][model].model,
							["@new_character_id"] = user.get("characterID"),
						})
						user_weapons[source][model] = user_weapons[target][model]
						user_weapons[source][model].character_id = user.get("characterID")
						user_weapons[target][model] = nil
						TriggerClientEvent("weapon:set", target, user_weapons[target])
						TriggerClientEvent("weapon:give", target)
						TriggerClientEvent("weapon:set", source, user_weapons[source])
						TriggerClientEvent("weapon:give", source)
						TriggerClientEvent("weapon:sync", -1, user_weapons)
						TriggerEvent("weapon:sync", user_weapons)

						Notify(user.get("first_name").." "..user.get("last_name").." stole your "..Weapons_names[model], 3000, target)
						Notify("You stole a "..Weapons_names[model].." from "..GetIdentity(target), 3000, source)
					end)
				else
					Notify("You cannot hold anymore weapons", 3000, source)
				end
			else
				Notify("This user already has this weapon", 3000, source)
			end
		else
			Notify("You don't have this weapon", 3000, source)
		end
	end
end)

RegisterServerEvent("weapon:destroy_target")
AddEventHandler("weapon:destroy_target", function(model, target)
	local source = source
	TriggerEvent("core:getuser", target, function(user)
		exports["GHMattiMySQL"]:QueryAsync("DELETE FROM weapons WHERE (character_id=@character_id) AND (model=@model) AND (pd_stash = 0)", {
			["@character_id"] = user.get("characterID"),
			["@model"] = model,
		})
		user_weapons[target][model] = nil
		TriggerClientEvent("weapon:set", target, user_weapons[target])
		TriggerClientEvent("weapon:give", target)
		TriggerClientEvent("weapon:sync", -1, user_weapons)
		TriggerEvent("weapon:sync", user_weapons)

		Notify(GetIdentity(source).." destroyed your "..Weapons_names[model], 3000, target)
		Notify("You destroyed "..user.get("first_name").." "..user.get("last_name").."'s "..Weapons_names[model], 3000, source)
	end)
end)

RegisterServerEvent("weapon:destroy")
AddEventHandler("weapon:destroy", function(model)
	local source = source
	TriggerEvent("core:getuser", source, function(user)
		exports["GHMattiMySQL"]:QueryAsync("DELETE FROM weapons WHERE (character_id=@character_id) AND (model=@model) AND (pd_stash = 0)", {
			["@character_id"] = user.get("characterID"),
			["@model"] = model,
		})
		user_weapons[source][model] = nil
		TriggerClientEvent("weapon:set", source, user_weapons[source])
		TriggerClientEvent("weapon:give", source)
		TriggerClientEvent("weapon:sync", -1, user_weapons)
		TriggerEvent("weapon:sync", user_weapons)
	end)
end)

AddEventHandler("weapon:delete", function(source)
	local source = source
	TriggerEvent("core:getuser", source, function(user)
		exports["GHMattiMySQL"]:QueryAsync("DELETE FROM weapons WHERE (character_id=@character_id) AND (pd_stash = 0)", {
			["@character_id"] = user.get("characterID"),
		})
		user_weapons[source] = {}
		TriggerClientEvent("weapon:set", source, user_weapons[source])
		TriggerClientEvent("weapon:give", source)
		TriggerClientEvent("weapon:sync", -1, user_weapons)
		TriggerEvent("weapon:sync", user_weapons)
	end)
end)

AddEventHandler("weapon:getuser", function(user, cb)
	if user_weapons[user] then
		cb(user_weapons[user])
	else
		cb(nil)
	end
end)

AddEventHandler("playerDropped", function()
	local source = source
	user_weapons[source] = nil
	TriggerClientEvent("weapon:sync", -1, user_weapons)
	TriggerEvent("weapon:sync", user_weapons)
end)

AddEventHandler("core:switch", function(source)
	local source = source
	user_weapons[source] = {}
	TriggerClientEvent("weapon:set", source, user_weapons[source])
	TriggerClientEvent("weapon:give", source)
	TriggerClientEvent("weapon:sync", -1, user_weapons)
	TriggerEvent("weapon:sync", user_weapons)
end)

local Store = {
	[36] = 10,
    [46] = 50,
    [39] = 300,
    [44] = 30,
    [83] = 1,
    [84] = 1,
    [85] = 1,
    [86] = 1,
    [87] = 1,
    [88] = 1,
    [89] = 1,
    [90] = 1,
}

RegisterServerEvent("bmitem:buy")
AddEventHandler("bmitem:buy", function(id, quantity)
	local source = source
	local user_quantity = getQuantity(source)
	TriggerEvent("core:getuser", source, function(user)
		if user_quantity >= 100 then
			TriggerClientEvent("pNotify:SendNotification", source, {text = "You cannot hold anymore items!",type = "error",queue = "left",timeout = 2500,layout = "bottomCenter"})
		elseif user_quantity + tonumber(quantity) >= 100 then
			local available_space = 100 - user_quantity
			if user.get("wallet") >= (Store[id]*available_space) then
				user.removeWallet(Store[id]*available_space)
				TriggerEvent("inventory:add_server", source, id, available_space)
				TriggerClientEvent("pNotify:SendNotification", source, {text = "Successfully purchased "..available_space.." "..itemlist[id].name.."(s)!",type = "error",queue = "left",timeout = 2500,layout = "bottomCenter"})
			else
				TriggerClientEvent("pNotify:SendNotification", source, {text = "Insufficient funds!",type = "error",queue = "left",timeout = 2500,layout = "bottomCenter"})
			end
		else
			if user.get("bank") >= (Store[id]*tonumber(quantity)) then
				user.removeBank(Store[id]*tonumber(quantity))
				TriggerEvent("inventory:add_server", source, id, tonumber(quantity))
				TriggerClientEvent("pNotify:SendNotification", source, {text = "Successfully purchased "..quantity.." "..itemlist[id].name.."(s)!",type = "error",queue = "left",timeout = 2500,layout = "bottomCenter"})
			else
				TriggerClientEvent("pNotify:SendNotification", source, {text = "Insufficient funds!",type = "error",queue = "left",timeout = 2500,layout = "bottomCenter"})
			end
		end
	end)
end)

-- This is a horrible implementation
local stashLimit = 18
local stashLocked = {}

RegisterServerEvent("policeStash:add")
AddEventHandler("policeStash:add", function(weap)
    local src = source
	local charId = exports["core"]:GetCharacterId(src)

	if charId then
		if not stashLocked[src] then
			stashLocked[src] = true

			if user_weapons[src] then
				if user_weapons[src][weap.model] then
					exports["GHMattiMySQL"]:QueryResultAsync("SELECT * FROM weapons WHERE pd_stash = 1 AND character_id = @character_id", { 
						["@character_id"] = charId,
					}, function(stash)
						if #stash < stashLimit then
							exports['GHMattiMySQL']:QueryAsync("UPDATE weapons SET pd_stash = 1 WHERE id = @id", {
								["@id"] = weap.id
							}, function()
								user_weapons[src][weap.model] = nil
								weap.pd_stash = 1
								stash[#stash + 1] = weap
								TriggerClientEvent("policeStash:update", src, stash)
								TriggerClientEvent("weapon:set", src, user_weapons[src])
								TriggerClientEvent("weapon:give", src)
								TriggerClientEvent("weapon:sync", -1, user_weapons)
								TriggerEvent("weapon:sync", user_weapons)
								TriggerClientEvent("mythic_notify:client:SendAlert", src, { type = "success", text = "Weapon stashed!" })
								stashLocked[src] = false
							end)
						else
							TriggerClientEvent("weapon:set", src, user_weapons[src])
							TriggerClientEvent("mythic_notify:client:SendAlert", src, { type = "error", text = "The stash is full!" })
							stashLocked[src] = false
						end
					end)
				else
					TriggerClientEvent("weapon:set", src, user_weapons[src])
					TriggerClientEvent("mythic_notify:client:SendAlert", src, { type = "error", text = "An error occured!" })
					stashLocked[src] = false
				end
			else
				TriggerClientEvent("weapon:set", src, user_weapons[src])
				TriggerClientEvent("mythic_notify:client:SendAlert", src, { type = "error", text = "An error occured!" })
				stashLocked[src] = false
			end
		else
			TriggerClientEvent("mythic_notify:client:SendAlert", src, { type = "error", text = "Stop spamming!" })
		end
	else
		TriggerClientEvent("weapon:set", src, user_weapons[src])
		TriggerClientEvent("mythic_notify:client:SendAlert", src, { type = "error", text = "An error occured!" })
	end
end)

RegisterServerEvent("policeStash:remove")
AddEventHandler("policeStash:remove", function(weap, idx)
	local src = source
	
	if not stashLocked[src] then
		stashLocked[src] = true

		if user_weapons[src] then
			if tablelength(user_weapons[src]) < max_weapons then
				if not user_weapons[src][weap.model] then
					exports['GHMattiMySQL']:QueryAsync("UPDATE weapons SET pd_stash = 0 WHERE id = @id", {
						["@id"] = weap.id
					}, function()
						user_weapons[src][weap.model] = weap
						user_weapons[src][weap.model].pd_stash = 0
						TriggerClientEvent("weapon:set", src, user_weapons[src])
						TriggerClientEvent("weapon:give", src)
						TriggerClientEvent("weapon:sync", -1, user_weapons)
						TriggerEvent("weapon:sync", user_weapons)
						TriggerClientEvent("mythic_notify:client:SendAlert", src, { type = "success", text = "Weapon obtained!" })
						stashLocked[src] = false
					end)
				else
					TriggerClientEvent("mythic_notify:client:SendAlert", src, { type = "error", text = "You cannot carry a weapon that you are already carrying!" })
					TriggerClientEvent("policeStash:remove", src, idx)
					stashLocked[src] = false
				end
			else
				TriggerClientEvent("mythic_notify:client:SendAlert", src, { type = "error", text = "The maximum number of weapons you can carry is ".. max_weapons })
				TriggerClientEvent("policeStash:remove", src, idx)
				stashLocked[src] = false
			end
		else
			TriggerClientEvent("mythic_notify:client:SendAlert", src, { type = "error", text = "An error occured!" })
			TriggerClientEvent("policeStash:remove", src, idx)
			stashLocked[src] = false
		end
	else
		TriggerClientEvent("mythic_notify:client:SendAlert", src, { type = "error", text = "Stop spamming!" })
		TriggerClientEvent("policeStash:remove", src, idx)
	end
end)