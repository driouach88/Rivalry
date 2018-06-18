local Cocaine = {
	Locations = {
		Pickup = {x = -495.73739624023, y = -2911.3024902344, z = 6.0003871917725, h = 42.021656036377},
		Van = {x = -488.9792175293, y = -2909.376953125, z = 6.000385761261, h = 316.95101928711},
	},
	Cost = {
		Dirty = 50,
		Van = 500,
	},
	Items = {
		Dirty = 47,
		Cocaine = 28,
	},
	Vehicle = {
		Model = "boxville4",
		Handle = nil,
	},
	Pay = {
		Min = 400,
		Max = 500,
	},
	Harvesting = false,
	Cooldown = 0,
}
local drug_zones = { 
	['AIRP'] = {label = "Los Santos International Airport", chance = 50}, -- 80% chance of success for selling drugs to a civ
	['ALAMO'] = {label = "Alamo Sea", chance = 50}, 
	['ALTA'] = {label = "Alta", chance = 50}, 
	['ARMYB'] = {label = "Fort Zancudo", chance = 0}, 
	['BANHAMC'] = {label = "Banham Canyon Dr", chance = 50}, 
	['BANNING'] = {label = "Banning", chance = 50}, 
	['BEACH'] = {label = "Vespucci Beach", chance = 70}, 
	['BHAMCA'] = {label = "Banham Canyon", chance = 50}, 
	['BRADP'] = {label = "Braddock Pass", chance = 50}, 
	['BRADT'] = {label = "Braddock Tunnel", chance = 50}, 
	['BURTON'] = {label = "Burton", chance = 50}, 
	['CALAFB'] = {label = "Calafia Bridge", chance = 50}, 
	['CANNY'] = {label = "Raton Canyon", chance = 50}, 
	['CCREAK'] = {label = "Cassidy Creek", chance = 50}, 
	['CHAMH'] = {label = "Chamberlain Hills", chance = 50}, 
	['CHIL'] = {label = "Vinewood Hills", chance = 50}, 
	['CHU'] = {label = "Chumash", chance = 50}, 
	['CMSW'] = {label = "Chiliad Mountain State Wilderness", chance = 70}, 
	['CYPRE'] = {label = "Cypress Flats", chance = 50},
	['DAVIS'] = {label = "Davis", chance = 70}, 
	['DELBE'] = {label = "Del Perro Beach", chance = 70}, 
	['DELPE'] = {label = "Del Perro", chance = 50}, 
	['DELSOL'] = {label = "La Puerta", chance = 50}, 
	['DESRT'] = {label = "Grand Senora Desert", chance = 50}, 
	['DOWNT'] = {label = "Downtown", chance = 50}, 
	['DTVINE'] = {label = "Downtown Vinewood", chance = 50}, 
	['EAST_V'] = {label = "East Vinewood", chance = 50}, 
	['EBURO'] = {label = "El Burro Heights", chance = 60}, 
	['ELGORL'] = {label = "El Gordo Lighthouse", chance = 50}, 
	['ELYSIAN'] = {label = "Elysian Island", chance = 80}, 
	['GALFISH'] = {label = "Galilee", chance = 50}, 
	['GOLF'] = {label = "GWC and Golfing Society", chance = 50}, 
	['GRAPES'] = {label = "Grapeseed", chance = 70}, 
	['GREATC'] = {label = "Great Chaparral", chance = 50}, 
	['HARMO'] = {label = "Harmony", chance = 50}, 
	['HAWICK'] = {label = "Hawick", chance = 50}, 
	['HORS'] = {label = "Vinewood Racetrack", chance = 50}, 
	['HUMLAB'] = {label = "Humane Labs and Research", chance = 0}, 
	['JAIL'] = {label = "Bolingbroke Penitentiary", chance = 0}, 
	['KOREAT'] = {label = "Little Seoul", chance = 70}, 
	['LACT'] = {label = "Land Act Reservoir", chance = 50}, 
	['LAGO'] = {label = "Lago Zancudo", chance = 50}, 
	['LDAM'] = {label = "Land Act Dam", chance = 50}, 
	['LEGSQU'] = {label = "Legion Square", chance = 50}, 
	['LMESA'] = {label = "La Mesa", chance = 60}, 
	['LOSPUER'] = {label = "La Puerta", chance = 50}, 
	['MIRR'] = {label = "Mirror Park", chance = 50}, 
	['MORN'] = {label = "Morningwood", chance = 50}, 
	['MOVIE'] = {label = "Richards Majestic", chance = 50}, 
	['MTCHIL'] = {label = "Mount Chiliad", chance = 80}, 
	['MTGORDO'] = {label = "Mount Gordo", chance = 80}, 
	['MTJOSE'] = {label = "Mount Josiah", chance = 80}, 
	['MURRI'] = {label = "Murrieta Heights", chance = 50}, 
	['NCHU'] = {label = "North Chumash", chance = 50}, 
	['NOOSE'] = {label = "N.O.O.S.E", chance = 0}, 
	['OCEANA'] = {label = "Pacific Ocean", chance = 50}, 
	['PALCOV'] = {label = "Paleto Cove", chance = 50}, 
	['PALETO'] = {label = "Paleto Bay", chance = 50}, 
	['PALFOR'] = {label = "Paleto Forest", chance = 50}, 
	['PALHIGH'] = {label = "Palomino Highlands", chance = 50}, 
	['PALMPOW'] = {label = "Palmer-Taylor Power Station", chance = 50}, 
	['PBLUFF'] = {label = "Pacific Bluffs", chance = 50}, 
	['PBOX'] = {label = "Pillbox Hill", chance = 50}, 
	['PROCOB'] = {label = "Procopio Beach", chance = 50}, 
	['RANCHO'] = {label = "Rancho", chance = 50}, 
	['RGLEN'] = {label = "Richman Glen", chance = 50}, 
	['RICHM'] = {label = "Richman", chance = 50}, 
	['ROCKF'] = {label = "Rockford Hills", chance = 50}, 
	['RTRAK'] = {label = "Redwood Lights Track", chance = 50}, 
	['SANAND'] = {label = "San Andreas", chance = 50}, 
	['SANCHIA'] = {label = "San Chianski Mountain Range", chance = 50}, 
	['SANDY'] = {label = "Sandy Shores", chance = 50}, 
	['SKID'] = {label = "Mission Row", chance = 50}, 
	['SLAB'] = {label = "Stab City", chance = 70}, 
	['STAD'] = {label = "Maze Bank Arena", chance = 50}, 
	['STRAW'] = {label = "Strawberry", chance = 70}, 
	['TATAMO'] = {label = "Tataviam Mountains", chance = 50}, 
	['TERMINA'] = {label = "Terminal", chance = 50}, 
	['TEXTI'] = {label = "Textile City", chance = 50}, 
	['TONGVAH'] = {label = "Tongva Hills", chance = 50}, 
	['TONGVAV'] = {label = "Tongva Valley", chance = 50}, 
	['VCANA'] = {label = "Vespucci Canals", chance = 50}, 
	['VESP'] = {label = "Vespucci", chance = 50}, 
	['VINE'] = {label = "Vinewood", chance = 50}, 
	['WINDF'] = {label = "Ron Alternates Wind Farm", chance = 80}, 
	['WVINE'] = {label = "West Vinewood", chance = 50}, 
	['ZANCUDO'] = {label = "Zancudo River", chance = 50}, 
	['ZP_ORT'] = {label = "Port of South Los Santos", chance = 50}, 
	['ZQ_UAR'] = {label = "Davis Quartz", chance = 50},
}

local function willNPCbuy()
	local pos = GetEntityCoords(PlayerPedId(), false)
	local zone = GetNameOfZone(pos.x, pos.y, pos.z)
	local percentage = GetRandomIntInRange(0, 101)
	if not drug_zones[zone] then
		return false
	else
		return percentage > (100 - drug_zones[zone]["chance"])
	end
end

function PlayConcaineAnimation(ped)
	Citizen.CreateThread(function()
		RequestAnimDict("anim@amb@business@coc@coc_unpack_cut@")
		while not HasAnimDictLoaded("anim@amb@business@coc@coc_unpack_cut@") do
			Citizen.Wait(0)
		end
		TaskPlayAnim(ped, "anim@amb@business@coc@coc_unpack_cut@", "fullcut_cycle_cokecutter", 5.0, -1, -1, 10, 0, false, false, false)
		Citizen.Wait(31000)
		if IsEntityPlayingAnim(ped, "anim@amb@business@coc@coc_unpack_cut@", "fullcut_cycle_cokecutter", 3) then
			ClearPedTasks(ped)
			if GetItemQuantity(Cocaine.Items.Dirty) > 0 then
				TriggerServerEvent("cocaine:clean")
			end
		else
			Notify("You didn't finish cleaning the coke!", 3000)
		end
		Cocaine.Harvesting = false
	end)
end

function CreateCocaineVan()
	local Model = GetHashKey(Cocaine.Vehicle.Model)

	RequestModel(Model)

	while not HasModelLoaded(Model) do
		Citizen.Wait(0)
	end

	Cocaine.Vehicle.Handle = CreateVehicle(Model, Cocaine.Locations.Van.x, Cocaine.Locations.Van.y, Cocaine.Locations.Van.z, Cocaine.Locations.Van.h, true, false)

	while not DoesEntityExist(Cocaine.Vehicle.Handle) do
		Citizen.Wait(0)
	end

	DecorSetBool(Cocaine.Vehicle.Handle, "hotwire", true)

	SetVehicleHasBeenOwnedByPlayer(Cocaine.Vehicle.Handle, true)

	NetworkRegisterEntityAsNetworked(Cocaine.Vehicle.Handle)
	local NetworkHandle = NetworkGetNetworkIdFromEntity(Cocaine.Vehicle.Handle)
	SetNetworkIdCanMigrate(NetworkHandle, true)
	SetNetworkIdExistsOnAllMachines(NetworkHandle, true)

	SetVehicleOnGroundProperly(Cocaine.Vehicle.Handle)

	SetModelAsNoLongerNeeded(Model)

	TaskWarpPedIntoVehicle(PlayerPedId(), Cocaine.Vehicle.Handle, -1)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local Position = GetEntityCoords(PlayerPedId(), false)
		if (IsInZone("coke") or IsInZone("coke2") or IsInZone("coke3")) and Position.z <= -35.50 then
			if GetItemQuantity(Cocaine.Items.Dirty) > 0 then
				DisplayHelpText("Press ~INPUT_CONTEXT~ to clean cocaine")
				if IsControlJustPressed(1, 51) and not Cocaine.Harvesting then
					Cocaine.Harvesting = true
					PlayConcaineAnimation(PlayerPedId())
				end
			end
		end
		if Vdist(Position.x, Position.y, Position.z, Cocaine.Locations.Pickup.x, Cocaine.Locations.Pickup.y, Cocaine.Locations.Pickup.z) < 20 then
			drawMarker(25, Cocaine.Locations.Pickup.x, Cocaine.Locations.Pickup.y, Cocaine.Locations.Pickup.z, 1.0, 1.0, 1.5, 255, 255, 0, 255)
			if Vdist(Position.x, Position.y, Position.z, Cocaine.Locations.Pickup.x, Cocaine.Locations.Pickup.y, Cocaine.Locations.Pickup.z) < 1 then
				if not isFull() then
					DisplayHelpText("Press ~INPUT_CONTEXT~ to purchase dirty cocaine for $"..Cocaine.Cost.Dirty.." each!")
					if IsControlJustPressed(1, 51) then
						TriggerServerEvent("cocaine:purchase")
					end
				else
					DisplayHelpText("Your inventory is full!")
				end
			end
		end
		if Vdist(Position.x, Position.y, Position.z, Cocaine.Locations.Van.x, Cocaine.Locations.Van.y, Cocaine.Locations.Van.z) < 20 then
			drawMarker(25, Cocaine.Locations.Van.x, Cocaine.Locations.Van.y, Cocaine.Locations.Van.z, 2.0, 2.0, 2.5, 255, 255, 0, 255)
			if Vdist(Position.x, Position.y, Position.z, Cocaine.Locations.Van.x, Cocaine.Locations.Van.y, Cocaine.Locations.Van.z) < 2 then
				if Cocaine.Vehicle.Handle == nil then
					DisplayHelpText("Press ~INPUT_CONTEXT~ to rent a Post OP van for $"..Cocaine.Cost.Van.."!")
					if IsControlJustPressed(1, 51) then
						TriggerServerEvent("cocaine:vehicle")
					end
				else
					DisplayHelpText("Press ~INPUT_CONTEXT~ to return the van!")
					if IsControlJustPressed(1, 51) then
						DestroyCar(Cocaine.Vehicle.Handle)
						Cocaine.Vehicle.Handle = nil
					end
				end
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		if(Cocaine.Cooldown > 0)then
			Cocaine.Cooldown = Cocaine.Cooldown - 1
		end
	end
end)

Citizen.CreateThread(function()
	RequestAnimDict("mp_common")
	while not HasAnimDictLoaded("mp_common") do
		Citizen.Wait(0)
	end
	while true do
		Citizen.Wait(0)
		if GetItemQuantity(Cocaine.Items.Cocaine) > 0 then
			for ped in EnumeratePeds() do
				if DoesEntityExist(ped) then
					if not IsEntityDead(ped) then
						if not IsPedAPlayer(ped) and not DecorGetBool(ped, "isTrader") and not DecorGetBool(ped, "soldTo") and not IsPedAnAnimal(GetEntityModel(ped)) then
							if Vdist2(GetEntityCoords(PlayerPedId(), false), GetEntityCoords(ped, false)) < 1 then
								if Cocaine.Cooldown > 0 then
									DisplayHelpText("Press ~INPUT_CONTEXT~ to sell cocaine! ["..Cocaine.Cooldown.."]")
								else
									DisplayHelpText("Press ~INPUT_CONTEXT~ to sell cocaine!")
									if IsControlJustPressed(1, 51) then
										Cocaine.Cooldown = 10
										DecorSetBool(ped, "soldTo", true)
										if willNPCbuy() then
											local methbag_model = GetHashKey("prop_meth_bag_01")

											RequestModel(methbag_model)

											while not HasModelLoaded(methbag_model) do
												Citizen.Wait(250)
											end

											SetEntityHeading(ped, GetEntityHeading(PlayerPedId()) - 180)

											local methbag = CreateObject(methbag_model, 0.01, 0, 0, 1, 0, 0)

											AttachEntityToEntity(object, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 64096), 0.0, 0.0, 0.020, 90.0, -10.0, -130.0 ,true, true, false, true, 1, true)

											TaskPlayAnim(PlayerPedId(), "mp_common", "givetake1_a", 100.0, 200.0, 0.3, 16, 0.2, 0, 0, 0)

	                    					TaskPlayAnim(ped, "mp_common", "givetake1_b", 100.0, 200.0, 0.3, 16, 0.2, 0, 0, 0)

	                    					Citizen.Wait(500)

	                    					DestroyObject(object)

											local amount = GetRandomIntInRange(1, 8)
											
											if GetItemQuantity(Cocaine.Items.Cocaine) >= amount then
												removeQty(Cocaine.Items.Cocaine, amount)
												local pay = GetRandomIntInRange(Cocaine.Pay.Min, Cocaine.Pay.Max+1) * amount
												local money_type = GetRandomIntInRange(1, 3)
												if getCops() <= 0 then pay = pay/2 end
												Notify("You sold "..amount.." gram(s) of coke for <span style='color:lime'>$</span><span style='color:white'>"..math.floor(pay).."</span>")
												TriggerServerEvent("cocaine:sell", math.floor(pay), money_type)
											else
												removeQty(Cocaine.Items.Cocaine, 1)
												local pay = GetRandomIntInRange(Cocaine.Pay.Min, Cocaine.Pay.Max+1)
												local money_type = GetRandomIntInRange(1, 3)
												if getCops() <= 0 then pay = pay/2 end
												Notify("You sold "..amount.." gram(s) of coke for <span style='color:lime'>$</span><span style='color:white'>"..math.floor(pay).."</span>")
												TriggerServerEvent("cocaine:sell", math.floor(pay), money_type)
											end
											PlaySoundFrontend(-1, "Hack_Success", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS", true)
										else
											TaskReactAndFleePed(ped, PlayerPedId())
											PlaySoundFrontend(-1, "Hack_Failed", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS", true)
											TriggerEvent("dispatch:drug")
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end)

RegisterNetEvent("cocaine:vehicle")
AddEventHandler("cocaine:vehicle", function()
	CreateCocaineVan()
end)