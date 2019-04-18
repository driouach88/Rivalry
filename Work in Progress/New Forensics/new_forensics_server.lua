local UnCollected_Fingerprints = {}
local UnCollected_BulletCasings = {}

function RemoveBulletCasing(Evidence)
	for k, v in pairs(UnCollected_BulletCasings) do
		if v.Player == Evidence.Player and v.Location == Evidence.Location and v.Coords == Evidence.Coords and v.Weapon == Evidence.Weapon then
			table.remove(UnCollected_BulletCasings, k)
			TriggerClientEvent('Forensics.Sync', -1, "UnCollectedBulletCasing", UnCollected_BulletCasings)
		end
	end
end

function RemoveFingerPrint(Index)
	table.remove(UnCollected_Fingerprints, Index)
	TriggerClientEvent('Forensics.Sync', -1, "UnCollectedFingerprints", UnCollected_Fingerprints)
end

RegisterServerEvent('Forensics.Delete.Evidence')
AddEventHandler('Forensics.Delete.Evidence', function(Index)
	local Source = source
	if UnCollected_BulletCasings[Index] ~= nil then
		table.remove(UnCollected_BulletCasings, Index)
		TriggerClientEvent('Forensics.Sync', -1, "UnCollectedFingerPrints", UnCollected_Fingerprints)
	end
end)

RegisterServerEvent('Forensics.Bleach.Vehicle')
AddEventHandler("Forensics.Bleach.Vehicle", function(Plate)
	local Source = source
	if Plate then
		for Index = 1, #UnCollected_Fingerprints do
			if UnCollected_Fingerprints[Index].LicensePlate == Plate then
				table.remove(UnCollected_Fingerprints, Index)
			end
		end
	end
end)

RegisterServerEvent('Forensics.Sync')
AddEventHandler('Forensics.Sync', function(Evidence, Type)
	local Source = source
	if Type == "BulletCasing" then
		TriggerEvent("core:getuser", Evidence.Player, function(User)
			TriggerEvent("weapon:getuser", Evidence.Player, function(_weapon)
				for k,v in pairs(_weapon) do
					if Weapons_names[Evidence.WeaponUsed] == Weapons_names[k] then
						Evidence.Player = User.get("characterID")
						Evidence.SerialNumber = v.id
					end
				end
			end)
		end)
		table.insert(UnCollected_BulletCasings, Evidence)
		TriggerClientEvent('Forensics.Sync', -1 ,"UnCollectedBulletCasing", UnCollected_BulletCasings)
	elseif Type == "FingerPrint" then
		TriggerEvent("core:getuser", Evidence.Player, function(User)
			Evidence.Player = User.get("characterID")
		end)
		table.insert(UnCollected_Fingerprints, Evidence)
		TriggerClientEvent('Forensics.Sync', -1, "UnCollectedFingerprints", UnCollected_Fingerprints)
	end
end)

RegisterServerEvent('Forensics.PickUp.Evidence')
AddEventHandler('Forensics.PickUp.Evidence', function(Evidence, Type, Index)
	local Source = source
	if Type == "BulletCasing" then
		RemoveBulletCasing(Evidence)
	elseif Type == "FingerPrint" then
		RemoveFingerPrint(Index)
	elseif Type == "DestroyEvidence" then
		RemoveBulletCasing(Evidence)
	end
end)

RegisterServerEvent('Police.Swab.Vehicle')
AddEventHandler('Police.Swab.Vehicle', function(Plate)
	local Source = source
	local Fingerprints = {}
	local Table = {}
	for Index = 1, #UnCollected_Fingerprints do
		if UnCollected_Fingerprints[Index] ~= nil then
			if UnCollected_Fingerprints[Index].LicensePlate == Plate then
				table.insert(Fingerprints, Plate)
				table.insert(Table, UnCollected_Fingerprints[Index])
				TriggerEvent('Forensics.PickUp.Evidence', UnCollected_Fingerprints[Index], "FingerPrint", Index)
			end
		end
	end
	TriggerClientEvent("Forensics.Vehicle.Swabs", Source, Table)
	TriggerClientEvent("chatMessage", source, "Evidence", {16, 102, 158}, "You have found " .. tostring(#Fingerprints .. " Fingerprints"))
end)

RegisterServerEvent('Forensics.BulletCasing.Information')
AddEventHandler('Forensics.BulletCasing.Information', function(Evidence)
	local Source = source
	if Type == "WeaponName" then
		TriggerClientEvent('Forensics.WeaponName.Return', Source, Weapon_names[Evidence.Model])
	elseif Type == "SerialNumber" then
		TriggerClientEvent('Forensics.BulletCasing.Return', Source, Evidence.SerialNumber)
	end
end)

RegisterServerEvent('Forensics.RunPrint')
AddEventHandler('Forensics.RunPrint', function(Player)
	local Source = source
	exports['GHMattiMySql']:QueryResultAsync("SELECT * FROM characters WHERE character_id=character_id", {["character_id"] = Player}, function(Character)
		local Name = Character.first_name.." "..Character.last_name
		exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM police_arrests WHERE offender_name=@offender_name", {["@offender_name"] = Name}, function(Result)
			if (#Result > 0) then
				TriggerClientEvent('Forensics.FingerPrint.Result', Source, "sucess", Name)
			else
				TriggerClientEvent('Forensics.FingerPrint.Result', Source, "nomatch", Name)
			end
		end)
	end)
end)

RegisterServerEvent("Forensics.Store")
AddEventHandler("Forensics.Store", function(Data, Description, Which)
	local Source = source
	if Which == "CDS" then
		exports['GHMattiMySQL']:QueryResult("INSERT INTO police_evidence_cds (`name`,`quantity`,`item_id`,`description`) VALUES (@name,@quantity,@item_id,@description);", { 
	        ['@name'] = Data.name,
	        ['@quantity'] = Data.quantity,
	        ['@item_id'] = Data.item_id,
	        ['@description'] = Description,
	    })
	elseif Which == "Firearms" then
		exports['GHMattiMySQL']:QueryResult("INSERT INTO police_evidence_firearms (`id`, `character_id`, `sellprice`, `model`, `ammo`, `suppressor`, `flashlight`, `extended_clip`, `scope`, `grip`, `advanced_scope`, `skin`, `owner`, `description`) VALUES (@id, @character_id, @sellprice, @model, @ammo, @suppressor, @flashlight, @extended_clip, @scope, @grip, @advanced_scope, @skin, @owner, @description);", { 
	        ['@id'] = Data.id,
	        ['@character_id'] = Data.character_id,
	        ['@sellprice'] = Data.sellprice,
	        ['@model'] = Data.model,
	        ['@ammo'] = Data.ammo,
	        ['@suppressor'] = Data.suppressor,
	        ['@flashlight'] = Data.flashlight,
	        ['@extended_clip'] = Data.extended_clip,
	        ['@scope'] = Data.scope,
	        ['@grip'] = Data.grip,
	        ['@advanced_scope'] = Data.advanced_scope,
	        ['@skin'] = Data.skin,
	        ['@owner'] = Data.owner,
	        ['@description'] = Description,
	    })
	    exports["GHMattiMySQL"]:QueryAsync("DELETE FROM weapons WHERE (character_id=@character_id) AND (model=@model)", {
			["@character_id"] = Data.character_id,
			["@model"] = Data.model,
			['@description'] = Description,
		})
	elseif Which == "Fingerprints" then
		exports['GHMattiMySQL']:QueryResult("INSERT INTO police_evidence_fingerprints (`player`,`licenseplate`,`description`) VALUES (@player,@licenseplate,@description);", { 
	        ['@player'] = Data.Player,
	        ['@licenseplate'] = Data.LicensePlate,
	        ['@description'] = Description,
	    })
	elseif Which == "Ballistics" then
		exports['GHMattiMySQL']:QueryResult("INSERT INTO police_evidence_ballistics (`player`, `weaponused`, `location`, `serialnumber`, `description`) VALUES (@player, @weaponused, @location, @serialnumber, @description);", { 
	        ['@player'] = Data.Player,
	        ['@weaponused'] = Data.WeaponUsed,
	        ['@location'] = Data.Location,
	        ['@serialnumber'] = Data.SerialNumber,
	        ['@description'] = Description,
	    })
	end
end)

RegisterServerEvent("Retrieve.Fingerprints")
RegisterServerEvent("Retrieve.Ballistics")
RegisterServerEvent("Retrieve.Firearms")
RegisterServerEvent("Retrieve.Controlled.Substances")

AddEventHandler("Retrieve.Fingerprints", function()
	local Source = source
	exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM police_evidence_fingerprints", {}, function(Fingerprints)
		TriggerClientEvent("Create.Locker.Fingerprints", Source, Fingerprints)
	end)
end)

AddEventHandler("Retrieve.Ballistics", function()
	local Source = source
	exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM police_evidence_ballistics", {}, function(Ballistics)
		TriggerClientEvent("Create.Locker.Ballistics", Source, Ballistics)
	end)
end)

AddEventHandler("Retrieve.Firearms", function()
	local Source = source
	exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM police_evidence_firearms", {}, function(Firearms)
		TriggerClientEvent("Create.Locker.Firearms", Source, Firearms)
	end)
end)

AddEventHandler("Retrieve.Controlled.Substances", function()
	local Source = source
	exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM police_evidence_cds", {}, function(ControlledSubstances)
		TriggerClientEvent("Create.Locker.Controlled.Substances", Source, ControlledSubstances)
	end)
end)

RegisterServerEvent("Locker.Destroy")

AddEventHandler("Locker.Destroy", function(Data, Which)
	local Source = source
	if Which == "Fingerprints" then
		exports["GHMattiMySQL"]:QueryAsync("DELETE FROM police_evidence_fingerprints WHERE (player=@player) AND (id=@id)", {
			["@id"] = Data.id,
			["@player"] = Data.player,
		})
	elseif Which == "Ballistics" then
		exports["GHMattiMySQL"]:QueryAsync("DELETE FROM police_evidence_ballistics WHERE (player=@player) AND (id=@id)", {
			["@id"] = Data.id,
			["@player"] = Data.player,
		})
	elseif Which == "Firearms" then
		exports["GHMattiMySQL"]:QueryAsync("DELETE FROM police_evidence_firearms WHERE (character_id=@character_id) AND (model=@model)", {
			["@character_id"] = Data.character_id,
			["@model"] = Data.model,
		})
	elseif Which == "CDS" then
		exports["GHMattiMySQL"]:QueryAsync("DELETE FROM police_evidence_cds WHERE (character_id=@character_id) AND (model=@model)", {
			["@item_id"] = Data.item_id,
			["@id"] = Data.id,
			['@quantity'] = quantity,
		})
	end
	TriggerClientEvent("Forensics.Locker", Source)
end)