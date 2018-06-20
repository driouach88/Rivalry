user_tattoos = {}

AddEventHandler("Tattoos.Initialise", function(source, identifier, character_id, model)
	exports["GHMattiMySQL"]:QueryResultAsync("SELECT * FROM tattoos WHERE character_id=@character_id", {
		["@character_id"] = character_id,
	}, function(_tattoos)
		if _tattoos[1] == nil then
			exports["GHMattiMySQL"]:QueryAsync("INSERT INTO tattoos (`character_id`, `tattoos`, `tattoos_police`, `tattoos_paramedic`) VALUES (@character_id,@tattoos,@police_tattoos,@paramedic_tattoo)", {
				["@character_id"] = character_id,
				["@tattoos"] = json.encode({}),
				["@police_tattoos"] = json.encode({}),
				["@paramedic_tattoos"] = json.encode({}),
			})
			user_tattoos[source] = {
				default = {},
				police = {},
				paramedic = {},
			}	
			TriggerClientEvent("Tattoos.Load", source, user_tattoos[source])
		else
			user_tattoos[source] = {
				default = json.decode(_tattoos[1].tattoos),
				police = json.decode(_tattoos[1].tattoos_police),
				paramedic = json.decode(_tattoos[1].tattoos_paramedic),
			}
			TriggerClientEvent("Tattoos.Load", source, user_tattoos[source])
		end
	end)
end)

RegisterServerEvent("Tattoos.Save")
AddEventHandler("Tattoos.Save", function(Tats, type)
	local source = source
	TriggerEvent("core:getuser", source, function(user)
		if user ~= nil then
			user_tattoos[source][type] = Tats
			exports["GHMattiMySQL"]:QueryAsync("UPDATE tattoos SET tattoos=@tattoos, tattoos_police=@police_tattoos, tattoos_paramedic=@paramedic_tattoos WHERE character_id=@character_id", {
				["@character_id"] = user.get("characterID"),
				["@tattoos"] = json.encode(user_tattoos[source]["default"]),
				["@police_tattoos"] = json.encode(user_tattoos[source]["police"]),
				["@paramedic_tattoos"] = json.encode(user_tattoos[source]["paramedic"]),
			})
		end
	end)
end)

AddEventHandler("playerDropped", function(reason)
    local source = source
    if user_tattoos[source] ~= nil then
        user_tattoos[source] = nil
    end
end)

AddEventHandler("core:switch", function(source)
    local source = source
    user_tattoos[source] = nil
end)