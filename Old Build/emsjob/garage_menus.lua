--[[
    Script created by: Frazzle

    Contact: frazzle9999@gmail.com

    Note: this script is licensed under "No License", you are allowed to:

    Use and Edit the Script.

    you are not allowed to:

    Copy, re-release, re-distribute it without my written permission.
--]]
local currentgarage = {x = 0.0, y = 0.0, z = 0.0}
local stationGarage = {
    {name = "Paramedic Garage", sprite = 50, colour = 2, x=-237.292, y=6332.39, z=32.3463},
    {name = "Paramedic Garage", sprite = 50, colour = 2, x=1842.64, y=3667.10, z=33.6801},
    {name = "Paramedic Garage", sprite = 50, colour = 2, x=-657.582, y=293.92, z=81.4133},
    {name = "Paramedic Garage", sprite = 50, colour = 2, x=-876.029, y=-300.418, z=39.6034},
    {name = "Paramedic Garage", sprite = 50, colour = 2, x=1169.01, y=-1509.82, z=34.6926},
    {name = "Paramedic Garage", sprite = 50, colour = 2, x=303.086, y=-1439.04, z=29.8019},
    {name = "Paramedic Garage", sprite = 50, colour = 2, x=364.135, y=-591.145, z=28.6844},--
    {name = "Paramedic Garage", sprite = 50, colour = 2, x=-475.254, y=-352.322, z=34.3147},
}

local stationHeliGarage = {
    {name = "Paramedic Helipad", sprite = 43, colour = 2, x=-475.22604370117, y=5988.6201171875, z=31.336700439453},
    {name = "Paramedic Helipad", sprite = 43, colour = 2, x=313.30563354492, y=-1465.1845703125, z=46.509475708008},
    {name = "Paramedic Helipad", sprite = 43, colour = 2, x=299.50131225586, y=-1453.5455322266, z=46.509475708008},
    {name = "Paramedic Helipad", sprite = 43, colour = 2, x=352.01733398438, y=-588.12835693359, z=74.165634155273},
    {name = "Paramedic Helipad", sprite = 43, colour = 2, x=1770.2397460938, y=3239.8703613281, z=42.1227684021},
    {name = "Paramedic Helipad", sprite = 43, colour = 2, x=1216.7823486328, y=-1516.5510253906, z=34.700180053711},
}

cars = {
    {name = "Ambulance", model = "ambulance", type = "", rank = "probationary"},
    {name = "Ambulance 2", model = "ambulance2", type = "", rank = "probationary"},
    {name = "Ambulance 3", model = "ambulance3", type = "", rank = "probationary"},
    {name = "SUV", model = "emssuv", type = "", rank = "paramedic"},
    {name = "CVPI", model = "emscar", type = "", rank = "lieutenant"},
    {name = "Schafter", model = "emscar2", type = "", rank = "lieutenant"},
    {name = "Van", model = "emsvan", type = "", rank = "specialist"},
    {name = "Contender", model = "lguard2", type = "", rank = "specialist"},
}

heli = {
    {name = "LSFD Chopper", model = "polmav", type = "helicopter", rank = "paramedic"},
}

function isNearStationGarage()
    for i = 1, #stationGarage do
        local ply = PlayerPedId()
        local plyCoords = GetEntityCoords(ply, 0)
        local distance = GetDistanceBetweenCoords(stationGarage[i].x, stationGarage[i].y, stationGarage[i].z, plyCoords["x"], plyCoords["y"], plyCoords["z"], true)
        if(distance < 30) then
            DrawMarker(25, stationGarage[i].x, stationGarage[i].y, stationGarage[i].z-0.9, 0, 0, 0, 0, 0, 0, 2.0, 2.0, 1.5, 243, 44, 82, 155, 0, 0, 2, 0, 0, 0, 0)
            currentgarage.x, currentgarage.y, currentgarage.z = stationGarage[i].x, stationGarage[i].y, stationGarage[i].z
            if(distance < 2) then
                return true
            elseif distance > 2 then
                if WarMenu.IsMenuOpened("car_menu") then
                    WarMenu.CloseMenu("car_menu")
                end
            end
        end
    end
end

function isNearStationHeliGarage()
    for i = 1, #stationHeliGarage do
        local ply = PlayerPedId()
        local plyCoords = GetEntityCoords(ply, 0)
        local distance = GetDistanceBetweenCoords(stationHeliGarage[i].x, stationHeliGarage[i].y, stationHeliGarage[i].z, plyCoords["x"], plyCoords["y"], plyCoords["z"], true)
        if(distance < 30) then
            DrawMarker(25, stationHeliGarage[i].x, stationHeliGarage[i].y, stationHeliGarage[i].z-0.9, 0, 0, 0, 0, 0, 0, 9.0, 9.0, 2.5, 243, 44, 82, 155, 0, 0, 2, 0, 0, 0, 0)
            currentgarage.x, currentgarage.y, currentgarage.z = stationHeliGarage[i].x, stationHeliGarage[i].y, stationHeliGarage[i].z
            if(distance < 7) then
                return true
            elseif distance > 7 then
                if WarMenu.IsMenuOpened("heli_menu") then
                    WarMenu.CloseMenu("heli_menu")
                end
            end
        end
    end
end

Citizen.CreateThread(function()
    local currentLiveryIndex = 1
    local selectedLiveryIndex = 1
    local currentExtraIndex = 1
    local selectedExtraIndex = 1
    while true do
        Citizen.Wait(0)
        if isParamedic then
            if isInService then
                if isNearStationGarage() then
                    if existingVeh == nil then
                        DisplayHelpText("Press ~INPUT_CONTEXT~ to ~b~collect your vehicle~w~!")
                    else
                        DisplayHelpText("Press ~INPUT_CONTEXT~ to ~b~store your vehicle~w~!\nPress ~INPUT_VEH_HEADLIGHT~ to ~b~modify~w~!")
                    end
        
                    if IsControlJustPressed(1, 38) then
                        if existingVeh ~= nil then
                            SetEntityAsMissionEntity(existingVeh, true, true)
                            Citizen.InvokeNative(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(existingVeh))
                            existingVeh = nil
                        else
                            if not WarMenu.IsMenuOpened("car_menu") then
                                if not WarMenu.DoesMenuExist("car_menu") then
                                    WarMenu.CreateMenu("car_menu", "Vehicles")
                                    WarMenu.SetSpriteTitle("car_menu", "shopui_title_ie_modgarage")
                                    WarMenu.SetSubTitle("car_menu", "Vehicles")
                                    WarMenu.SetMenuX("car_menu", 0.6)
                                    WarMenu.SetMenuY("car_menu", 0.15)
                                    WarMenu.SetTitleBackgroundColor("car_menu", 243, 44, 82, 255)
                                    WarMenu.OpenMenu("car_menu")
                                else
                                    WarMenu.OpenMenu("car_menu")
                                end
                            else
                                WarMenu.CloseMenu("car_menu")
                            end
                        end
                    end
                    if existingVeh ~= nil then
                        if IsControlJustPressed(1, 74) then
                            if not WarMenu.IsMenuOpened("car_modify_menu") then
                                if not WarMenu.DoesMenuExist("car_modify_menu") then
                                    WarMenu.CreateMenu("car_modify_menu", "Modify vehicle")
                                    WarMenu.SetSpriteTitle("car_modify_menu", "shopui_title_ie_modgarage")
                                    WarMenu.SetSubTitle("car_modify_menu", "Modifications")
                                    WarMenu.SetMenuX("car_modify_menu", 0.6)
                                    WarMenu.SetMenuY("car_modify_menu", 0.15)
                                    WarMenu.SetTitleBackgroundColor("car_modify_menu", 243, 44, 82, 255)
                                    WarMenu.OpenMenu("car_modify_menu")
                                    currentLiveryIndex = 1
                                    selectedLiveryIndex = 1
                                else
                                    WarMenu.OpenMenu("car_modify_menu")
                                    currentLiveryIndex = 1
                                    selectedLiveryIndex = 1
                                end
                            else
                                WarMenu.CloseMenu("car_modify_menu")
                            end
                        end
                    end
                    if WarMenu.IsMenuOpened("car_menu") then
                        for k,v in pairs(cars) do
                            if ranks[user_paramedic.rank][v.rank] or user_paramedic.rank == v.rank then
                                if WarMenu.Button(v.name) then
                                    spawncar(v.model, v.type)
                                end
                            end
                        end
                        WarMenu.Display()
                    end
                    if WarMenu.IsMenuOpened("car_modify_menu") then
                        if existingVeh ~= nil then
                            local livery_count = GetVehicleLiveryCount(existingVeh)
                            local liveries = {}
                            for i = 1, livery_count do table.insert(liveries, tostring(i)) end
                            local extras = {}
                            for i = 1, 25 do 
                                if DoesExtraExist(existingVeh, i) then table.insert(extras, tostring(i)) end 
                            end
                            if WarMenu.ComboBox("Livery", liveries , currentLiveryIndex, selectedLiveryIndex, function(currentIndex, selectedIndex)
                                currentLiveryIndex = currentIndex
                                selectedLiveryIndex = selectedIndex
                            end) then
                                SetVehicleLivery(existingVeh, selectedLiveryIndex)
                            end
                            if WarMenu.ComboBox("Extra", extras , currentExtraIndex, selectedExtraIndex, function(currentIndex, selectedIndex)
                                currentExtraIndex = currentIndex
                                selectedExtraIndex = selectedIndex
                            end) then
                                if IsVehicleExtraTurnedOn(existingVeh, selectedExtraIndex) == 1 then
                                    SetVehicleExtra(existingVeh, selectedExtraIndex, true)
                                else
                                    SetVehicleExtra(existingVeh, selectedExtraIndex, false)
                                end
                            end
                            WarMenu.Display()
                        else
                            WarMenu.CloseMenu("car_modify_menu")
                        end
                    end
                end
                if isNearStationHeliGarage() then
                    if existingVeh == nil then
                        DisplayHelpText("Press ~INPUT_CONTEXT~ to ~b~collect your chopper~w~!")
                    else
                        DisplayHelpText("Press ~INPUT_CONTEXT~ to ~b~store your chopper~w~!")
                    end
        
                    if IsControlJustPressed(1, 38) then
                        if existingVeh ~= nil then
                            SetEntityAsMissionEntity(existingVeh, true, true)
                            Citizen.InvokeNative(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(existingVeh))
                            existingVeh = nil
                        else
                            if not WarMenu.IsMenuOpened("heli_menu") then
                                if not WarMenu.DoesMenuExist("heli_menu") then
                                    WarMenu.CreateMenu("heli_menu", "Helicopters")
                                    WarMenu.SetSpriteTitle("heli_menu", {"pause_menu_pages_char_mom_dad", "vignette", "Helicopters"})
                                    WarMenu.SetSubTitle("heli_menu", "")
                                    WarMenu.SetMenuX("heli_menu", 0.6)
                                    WarMenu.SetMenuY("heli_menu", 0.15)
                                    WarMenu.SetTitleBackgroundColor("heli_menu", 43, 44, 82, 255)
                                    WarMenu.OpenMenu("heli_menu")
                                else
                                    WarMenu.OpenMenu("heli_menu")
                                end
                            else
                                WarMenu.CloseMenu("heli_menu")
                            end
                        end
                    end
                    if WarMenu.IsMenuOpened("heli_menu") then
                        for k,v in pairs(heli) do
                            if ranks[user_paramedic.rank][v.rank] or user_paramedic.rank == v.rank then
                                if WarMenu.Button(v.name) then
                                    spawncar(v.model, v.type)
                                end
                            end
                        end
                        WarMenu.Display()
                    end
                end
            end
        end
    end
end)

function spawncar(model, type)
    Citizen.CreateThread(function()
        local plate = "LSFD"..math.random(1,999)
        local helicopter = false
        local tint = false
        if type == "helicopter" or type == "heli" then
            helicopter = true
        elseif type == "undercover" then
            tint = true
            plate = math.random(00000000,99999999)
        end
        local carhashed = GetHashKey(model)
        local ply = PlayerPedId()
        local plyCoords = GetEntityCoords(ply, 0)
        RequestModel(carhashed)
        while not HasModelLoaded(carhashed) do
            Citizen.Wait(0)
        end
                                
        existingVeh = CreateVehicle(carhashed, currentgarage.x, currentgarage.y, currentgarage.z, 90.0, true, false)
        while not DoesEntityExist(existingVeh) do
            Citizen.Wait(0)
        end
        local id = NetworkGetNetworkIdFromEntity(existingVeh)
        SetNetworkIdCanMigrate(id, true)
        SetVehicleMod(existingVeh, 11, 3)
        SetVehicleMod(existingVeh, 12, 3)
        SetVehicleMod(existingVeh, 13, 3)
        SetVehicleMod(existingVeh, 15, 3)
        SetVehicleTyresCanBurst(existingVeh, false)
        SetVehicleNumberPlateText(existingVeh, plate)
        if tint then
            SetVehicleWindowTint(existingVeh, 1)
        elseif helicopter then
            SetVehicleLivery(existingVeh, 0)
        else
            SetVehicleWindowTint(existingVeh, 0)
        end
        SetVehicleDirtLevel(existingVeh, 0)
        for i = 1, 25 do 
            if DoesExtraExist(existingVeh, i) then
                SetVehicleExtra(existingVeh, i, false)
            end 
        end
        TaskWarpPedIntoVehicle(ply, existingVeh, -1)
        if WarMenu.IsMenuOpened("car_menu") then
            WarMenu.CloseMenu("car_menu")
        end             
        if WarMenu.IsMenuOpened("heli_menu") then
            WarMenu.CloseMenu("heli_menu")
        end
        SetModelAsNoLongerNeeded(carhashed)
    end)
end


function AddParamedicBlips()
    for _, item in pairs(stationGarage) do
        addBlip(item)
    end
    for _, item in pairs(stationHeliGarage) do
        addBlip(item)
    end   
end

function RemoveParamedicBlips()
    for _, item in pairs(stationGarage) do
        RemoveBlip(item.blip)
    end
    for _, item in pairs(stationHeliGarage) do
        RemoveBlip(item.blip)
    end
end

function IsVehicleExempt(_model)
    local exempt = false
    for i = 1, #cars do
        if GetHashKey(cars[i].model) == _model then
            exempt = true
            break
        end
    end
    for i = 1, #heli do
        if GetHashKey(heli[i].model) == _model then
            exempt = true
            break
        end
    end
    return exempt
end