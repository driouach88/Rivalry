News = {}
News.IsNews = true
News.Active = false
News.Rank = nil
NewsVan = nil
News.Locations = {
	vector3(-598.90698242188,-931.88848876953,23.864088058472)
}
News.GarageLocation = {
	Marker = vector3(-614.9873046875,-940.38342285156,22.089311599731),
	SpawnPoint = vector3(-616.94409179688,-920.56097412109,23.384330749512)
}

function NewsOnDuty()
	return News.Active
end

function NewsIsNews()
	return News.IsNews
end

function NewsGetRank()
	return News.Rank
end

Citizen.CreateThread(function()
	CreateBlip("Weazel News", 590, 76, News.Locations[1].x, News.Locations[1].y, News.Locations[1].z)
	while true do
		Citizen.Wait(0)
		if News.IsNews then
			PlayerPosition = GetEntityCoords(PlayerPedId(), false)
			for i = 1, #News.Locations do
				 if #(PlayerPosition - News.Locations[i]) < 10 then
					RenderMarker(25, News.Locations[i].x, News.Locations[i].y, News.Locations[i].z, 1.5, 1.5, 2.0, 255, 255, 0, 20)
					if #(PlayerPosition - News.Locations[i]) < 1 then
						if not News.Active then
							DisplayHelpText("Press ~INPUT_CONTEXT~ to ~g~clock in~w~!")
						else
							DisplayHelpText("Press ~INPUT_CONTEXT~ to ~r~clock out~w~!")
						end
						if IsControlJustPressed(1, 51) then
							if not News.Active then
								TriggerServerEvent("News:Sync", "add")
								Notify("You are now on duty!", 2600)
							else
								TriggerServerEvent("News:Sync", "remove")
								Notify("You are now off duty!", 2600)
							end
							News.Active = not News.Active
						end
					end
				end
			end
			if News.Active then
				if #(PlayerPosition - News.GarageLocation.Marker) < 10 then
					RenderMarker(25, News.GarageLocation.Marker.x, News.GarageLocation.Marker.y, News.GarageLocation.Marker.z, 1.5, 1.5, 2.0, 255, 255, 0, 20)
					if #(PlayerPosition - News.GarageLocation.Marker) < 1 then
						if NewsVan then
							DisplayHelpText("Press ~INPUT_CONTEXT~ to return your van!")
						else
							DisplayHelpText("Press ~INPUT_CONTEXT~ to obtain your van!")
						end
						if IsControlJustPressed(1, 51) then
							if NewsVan then
								SetEntityAsMissionEntity(NewsVan, true, true)
								DeleteVehicle(NewsVan)
								NewsVan = nil
							else
								if tobool(drivers_license) then
									TriggerEvent("NewsVan.Rent")
								else
									Notify("You do not have a valid drivers license!", 2500)
								end
							end
						end
					end
				end
				if NewsVan then
					if IsEntityDead(NewsVan) then
						NewsVan = nil
						Notify("The news van was destroyed, go get a new one!", 3000)
					end
				end
			end
		end
	end
end)

Chat.Command("cam", function(source, args, fullCommand)
	local source = source
	if News.Active then
		TriggerEvent("Cam:ToggleCam", source)
	else
		Notify("You are not on duty as news reporter!")
	end
end, false, {Help = "Toggle News Camera",  Params = {}})

Chat.Command("mic", function(source, args, fullCommand)
	local source = source
	if News.Active then
		TriggerEvent("Mic:ToggleMic", source)
	else
		Notify("You are not on duty as news reporter!")
	end
end, false, {Help = "Toggle News Mic",  Params = {}})

Chat.Command("bmic", function(source, args, fullCommand)
	local source = source
	if News.Active then
		TriggerEvent("Mic:ToggleBMic", source)
	else
		Notify("You are not on duty as news reporter!")
	end
end, false, {Help = "Toggle News Boom Mic",  Params = {}})


RegisterNetEvent("News:Set")
AddEventHandler("News:Set", function(_IsNews)
	News.Active = false
	News.IsNews = _IsNews
end)

RegisterNetEvent("NewsVan.Rent")
AddEventHandler("NewsVan.Rent", function()
	Citizen.CreateThread(function()
		NewsVan = exports["core"]:SpawnVehicle("Rumpo", News.GarageLocation.SpawnPoint, 124.78857421875, false)
		
		if NewsVan ~= nil and NewsVan ~= 0 then
			local plate = "WZL"..GetVehicleNumberPlateText(NewsVan)
			SetVehicleNumberPlateText(NewsVan, plate)
			SetEntityInvincible(NewsVan, false)
			SetPedIntoVehicle(Ped, NewsVan, -1)
			SetVehicleLivery(NewsVan, 2)
			DecorSetBool(NewsVan, "hotwire", true)
		end
	end)
end)

local holdingCam = false
local usingCam = false
local holdingMic = false
local usingMic = false
local holdingBmic = false
local usingBmic = false
local camModel = "prop_v_cam_01"
local camanimDict = "missfinale_c2mcs_1"
local camanimName = "fin_c2_mcs_1_camman"
local micModel = "p_ing_microphonel_01"
local micanimDict = "amb@world_human_aa_coffee@base"
local micanimName = "base"
local bmicModel = "prop_v_bmike_01"
local bmicanimDict = "missfra1"
local bmicanimName = "mcs2_crew_idle_m_boom"
local bmic_net = nil
local mic_net = nil
local cam_net = nil
local UI = { 
	x =  0.000 ,
	y = -0.001 ,
}

---------------------------------------------------------------------------
-- Toggling Cam --
---------------------------------------------------------------------------
RegisterNetEvent("Cam:ToggleCam")
AddEventHandler("Cam:ToggleCam", function()
    if not holdingCam then
        RequestModel(GetHashKey(camModel))
        while not HasModelLoaded(GetHashKey(camModel)) do
            Citizen.Wait(100)
        end
		
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -5.0)
        local camspawned = CreateObject(GetHashKey(camModel), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(1000)
        local netid = ObjToNet(camspawned)
        SetNetworkIdExistsOnAllMachines(netid, true)
        NetworkSetNetworkIdDynamic(netid, true)
        SetNetworkIdCanMigrate(netid, false)
        AttachEntityToEntity(camspawned, GetPlayerPed(PlayerId()), GetPedBoneIndex(GetPlayerPed(PlayerId()), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1, 1, 0, 1, 0, 1)
        TaskPlayAnim(GetPlayerPed(PlayerId()), 1.0, -1, -1, 50, 0, 0, 0, 0) -- 50 = 32 + 16 + 2
        TaskPlayAnim(GetPlayerPed(PlayerId()), camanimDict, camanimName, 1.0, -1, -1, 50, 0, 0, 0, 0)
        cam_net = netid
        holdingCam = true
		DisplayNotification("To enter News cam press ~INPUT_PICKUP~ \nTo Enter Movie Cam press ~INPUT_INTERACTION_MENU~")
    else
        ClearPedSecondaryTask(GetPlayerPed(PlayerId()))
        DetachEntity(NetToObj(cam_net), 1, 1)
        DeleteEntity(NetToObj(cam_net))
        cam_net = nil
        holdingCam = false
        usingCam = false
    end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if holdingCam then
			while not HasAnimDictLoaded(camanimDict) do
				RequestAnimDict(camanimDict)
				Citizen.Wait(100)
			end

			if not IsEntityPlayingAnim(PlayerPedId(), camanimDict, camanimName, 3) then
				TaskPlayAnim(GetPlayerPed(PlayerId()), 1.0, -1, -1, 50, 0, 0, 0, 0) -- 50 = 32 + 16 + 2
				TaskPlayAnim(GetPlayerPed(PlayerId()), camanimDict, camanimName, 1.0, -1, -1, 50, 0, 0, 0, 0)
			end
				
			DisablePlayerFiring(PlayerId(), true)
			DisableControlAction(0,25,true) -- disable aim
			DisableControlAction(0, 44,  true) -- INPUT_COVER
			DisableControlAction(0,37,true) -- INPUT_SELECT_WEAPON
			SetCurrentPedWeapon(GetPlayerPed(-1), GetHashKey("WEAPON_UNARMED"), true)
		end
	end
end)

---------------------------------------------------------------------------
-- Cam Functions --
---------------------------------------------------------------------------

local fov_max = 70.0
local fov_min = 5.0
local zoomspeed = 10.0
local speed_lr = 8.0
local speed_ud = 8.0
local camera = false
local fov = (fov_max+fov_min)*0.5

---------------------------------------------------------------------------
-- Movie Cam --
---------------------------------------------------------------------------

Citizen.CreateThread(function()
	while true do

		Citizen.Wait(10)

		if holdingCam and IsControlJustReleased(1, 244) then
			local lPed = GetPlayerPed(-1)
			local vehicle = GetVehiclePedIsIn(lPed)
			movcamera = true

			SetTimecycleModifier("default")

			SetTimecycleModifierStrength(0.3)
			
			local scaleform = RequestScaleformMovie("security_camera")

			while not HasScaleformMovieLoaded(scaleform) do
				Citizen.Wait(10)
			end


			local lPed = GetPlayerPed(-1)
			local vehicle = GetVehiclePedIsIn(lPed)
			local cam1 = CreateCam("DEFAULT_SCRIPTED_FLY_CAMERA", true)

			AttachCamToEntity(cam1, lPed, 0.0,0.0,1.0, true)
			SetCamRot(cam1, 2.0,1.0,GetEntityHeading(lPed))
			SetCamFov(cam1, fov)
			RenderScriptCams(true, false, 0, 1, 0)
			PushScaleformMovieFunction(scaleform, "security_camera")
			PopScaleformMovieFunctionVoid()

			while movcamera and not IsEntityDead(lPed) and (GetVehiclePedIsIn(lPed) == vehicle) and true do
				if IsControlJustPressed(0, 177) then
					PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
					movcamera = false
				end
				
				SetEntityRotation(lPed, 0, 0, new_z,2, true)

				local zoomvalue = (1.0/(fov_max-fov_min))*(fov-fov_min)
				CheckInputRotation(cam1, zoomvalue)

				HandleZoom(cam1)
				HideHUDThisFrame()

				drawRct(UI.x + 0.0, 	UI.y + 0.0, 1.0,0.15,0,0,0,255) -- Top Bar
				DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
				drawRct(UI.x + 0.0, 	UI.y + 0.85, 1.0,0.16,0,0,0,255) -- Bottom Bar
				
				local camHeading = GetGameplayCamRelativeHeading()
				local camPitch = GetGameplayCamRelativePitch()
				if camPitch < -70.0 then
					camPitch = -70.0
				elseif camPitch > 42.0 then
					camPitch = 42.0
				end
				camPitch = (camPitch + 70.0) / 112.0
				
				if camHeading < -180.0 then
					camHeading = -180.0
				elseif camHeading > 180.0 then
					camHeading = 180.0
				end
				camHeading = (camHeading + 180.0) / 360.0
				
				Citizen.InvokeNative(0xD5BB4025AE449A4E, GetPlayerPed(-1), "Pitch", camPitch)
				Citizen.InvokeNative(0xD5BB4025AE449A4E, GetPlayerPed(-1), "Heading", camHeading * -1.0 + 1.0)
				
				Citizen.Wait(10)
			end

			movcamera = false
			ClearTimecycleModifier()
			fov = (fov_max+fov_min)*0.5
			RenderScriptCams(false, false, 0, 1, 0)
			SetScaleformMovieAsNoLongerNeeded(scaleform)
			DestroyCam(cam1, false)
			SetNightvision(false)
			SetSeethrough(false)
		end
	end
end)

---------------------------------------------------------------------------
-- News Cam --
---------------------------------------------------------------------------

Citizen.CreateThread(function()
	while true do

		Citizen.Wait(10)

		if holdingCam and IsControlJustReleased(1, 38) then
			local lPed = GetPlayerPed(-1)
			local vehicle = GetVehiclePedIsIn(lPed)

			newscamera = true

			SetTimecycleModifier("default")

			SetTimecycleModifierStrength(0.3)
			
			local scaleform = RequestScaleformMovie("security_camera")
			local scaleform2 = RequestScaleformMovie("breaking_news")


			while not HasScaleformMovieLoaded(scaleform) do
				Citizen.Wait(10)
			end
			while not HasScaleformMovieLoaded(scaleform2) do
				Citizen.Wait(10)
			end


			local lPed = GetPlayerPed(-1)
			local vehicle = GetVehiclePedIsIn(lPed)
			cam2 = CreateCam("DEFAULT_SCRIPTED_FLY_CAMERA", true)

			AttachCamToEntity(cam2, lPed, 0.0,0.0,1.0, true)
			SetCamRot(cam2, 2.0,1.0,GetEntityHeading(lPed))
			SetCamFov(cam2, fov)
			RenderScriptCams(true, false, 0, 1, 0)
			PushScaleformMovieFunction(scaleform, "SET_CAM_LOGO")
			PushScaleformMovieFunction(scaleform2, "breaking_news")
			PopScaleformMovieFunctionVoid()

			while newscamera and not IsEntityDead(lPed) and (GetVehiclePedIsIn(lPed) == vehicle) and true do
				if IsControlJustPressed(1, 177) then
					PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
					newscamera = false
				end

				SetEntityRotation(lPed, 0, 0, new_z,2, true)
					
				local zoomvalue = (1.0/(fov_max-fov_min))*(fov-fov_min)
				CheckInputRotation(cam2, zoomvalue)

				HandleZoom(cam2)
				HideHUDThisFrame()

				DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
				DrawScaleformMovie(scaleform2, 0.5, 0.63, 1.0, 1.0, 255, 255, 255, 255)
				Breaking("BREAKING NEWS")
				
				local camHeading = GetGameplayCamRelativeHeading()
				local camPitch = GetGameplayCamRelativePitch()
				if camPitch < -70.0 then
					camPitch = -70.0
				elseif camPitch > 42.0 then
					camPitch = 42.0
				end
				camPitch = (camPitch + 70.0) / 112.0
				
				if camHeading < -180.0 then
					camHeading = -180.0
				elseif camHeading > 180.0 then
					camHeading = 180.0
				end
				camHeading = (camHeading + 180.0) / 360.0
				
				Citizen.InvokeNative(0xD5BB4025AE449A4E, GetPlayerPed(-1), "Pitch", camPitch)
				Citizen.InvokeNative(0xD5BB4025AE449A4E, GetPlayerPed(-1), "Heading", camHeading * -1.0 + 1.0)
				
				Citizen.Wait(10)
			end

			newscamera = false
			ClearTimecycleModifier()
			fov = (fov_max+fov_min)*0.5
			RenderScriptCams(false, false, 0, 1, 0)
			SetScaleformMovieAsNoLongerNeeded(scaleform)
			DestroyCam(cam2, false)
			SetNightvision(false)
			SetSeethrough(false)
		end
	end
end)

---------------------------------------------------------------------------
-- Events --
---------------------------------------------------------------------------

-- Activate camera
RegisterNetEvent('camera:Activate')
AddEventHandler('camera:Activate', function()
	camera = not camera
end)

--FUNCTIONS--
function HideHUDThisFrame()
	HideHelpTextThisFrame()
	HideHudAndRadarThisFrame()
	HideHudComponentThisFrame(1)
	HideHudComponentThisFrame(2)
	HideHudComponentThisFrame(3)
	HideHudComponentThisFrame(4)
	HideHudComponentThisFrame(6)
	HideHudComponentThisFrame(7)
	HideHudComponentThisFrame(8)
	HideHudComponentThisFrame(9)
	HideHudComponentThisFrame(13)
	HideHudComponentThisFrame(11)
	HideHudComponentThisFrame(12)
	HideHudComponentThisFrame(15)
	HideHudComponentThisFrame(18)
	HideHudComponentThisFrame(19)
end

function CheckInputRotation(cam, zoomvalue)
	local rightAxisX = GetDisabledControlNormal(0, 220)
	local rightAxisY = GetDisabledControlNormal(0, 221)
	local rotation = GetCamRot(cam, 2)
	if rightAxisX ~= 0.0 or rightAxisY ~= 0.0 then
		new_z = rotation.z + rightAxisX*-1.0*(speed_ud)*(zoomvalue+0.1)
		new_x = math.max(math.min(20.0, rotation.x + rightAxisY*-1.0*(speed_lr)*(zoomvalue+0.1)), -89.5)
		SetCamRot(cam, new_x, 0.0, new_z, 2)
	end
end

function HandleZoom(cam)
	local lPed = GetPlayerPed(-1)
	if not ( IsPedSittingInAnyVehicle( lPed ) ) then

		if IsControlJustPressed(0,241) then
			fov = math.max(fov - zoomspeed, fov_min)
		end
		if IsControlJustPressed(0,242) then
			fov = math.min(fov + zoomspeed, fov_max)
		end
		local current_fov = GetCamFov(cam)
		if math.abs(fov-current_fov) < 0.1 then
			fov = current_fov
		end
		SetCamFov(cam, current_fov + (fov - current_fov)*0.05)
	else
		if IsControlJustPressed(0,17) then
			fov = math.max(fov - zoomspeed, fov_min)
		end
		if IsControlJustPressed(0,16) then
			fov = math.min(fov + zoomspeed, fov_max)
		end
		local current_fov = GetCamFov(cam)
		if math.abs(fov-current_fov) < 0.1 then
			fov = current_fov
		end
		SetCamFov(cam, current_fov + (fov - current_fov)*0.05)
	end
end


---------------------------------------------------------------------------
-- Toggling Mic --
---------------------------------------------------------------------------
RegisterNetEvent("Mic:ToggleMic")
AddEventHandler("Mic:ToggleMic", function()
    if not holdingMic then
        RequestModel(GetHashKey(micModel))
        while not HasModelLoaded(GetHashKey(micModel)) do
            Citizen.Wait(100)
        end
		
		while not HasAnimDictLoaded(micanimDict) do
			RequestAnimDict(micanimDict)
			Citizen.Wait(100)
		end

        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -5.0)
        local micspawned = CreateObject(GetHashKey(micModel), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
        Citizen.Wait(1000)
        local netid = ObjToNet(micspawned)
        SetNetworkIdExistsOnAllMachines(netid, true)
        NetworkSetNetworkIdDynamic(netid, true)
        SetNetworkIdCanMigrate(netid, false)
        AttachEntityToEntity(micspawned, GetPlayerPed(PlayerId()), GetPedBoneIndex(GetPlayerPed(PlayerId()), 60309), 0.055, 0.05, 0.0, 240.0, 0.0, 0.0, 1, 1, 0, 1, 0, 1)
        TaskPlayAnim(GetPlayerPed(PlayerId()), 1.0, -1, -1, 50, 0, 0, 0, 0) -- 50 = 32 + 16 + 2
        TaskPlayAnim(GetPlayerPed(PlayerId()), micanimDict, micanimName, 1.0, -1, -1, 50, 0, 0, 0, 0)
        mic_net = netid
        holdingMic = true
    else
        ClearPedSecondaryTask(GetPlayerPed(PlayerId()))
        DetachEntity(NetToObj(mic_net), 1, 1)
        DeleteEntity(NetToObj(mic_net))
        mic_net = nil
        holdingMic = false
        usingMic = false
    end
end)

---------------------------------------------------------------------------
-- Toggling Boom Mic --
---------------------------------------------------------------------------
RegisterNetEvent("Mic:ToggleBMic")
AddEventHandler("Mic:ToggleBMic", function()
    if not holdingBmic then
        RequestModel(GetHashKey(bmicModel))
        while not HasModelLoaded(GetHashKey(bmicModel)) do
            Citizen.Wait(100)
        end
		
        local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -5.0)
        local bmicspawned = CreateObject(GetHashKey(bmicModel), plyCoords.x, plyCoords.y, plyCoords.z, true, true, false)
        Citizen.Wait(1000)
        local netid = ObjToNet(bmicspawned)
        SetNetworkIdExistsOnAllMachines(netid, true)
        NetworkSetNetworkIdDynamic(netid, true)
        SetNetworkIdCanMigrate(netid, false)
        AttachEntityToEntity(bmicspawned, GetPlayerPed(PlayerId()), GetPedBoneIndex(GetPlayerPed(PlayerId()), 28422), -0.08, 0.0, 0.0, 0.0, 0.0, 0.0, 1, 1, 0, 1, 0, 1)
        TaskPlayAnim(GetPlayerPed(PlayerId()), 1.0, -1, -1, 50, 0, 0, 0, 0) -- 50 = 32 + 16 + 2
        TaskPlayAnim(GetPlayerPed(PlayerId()), bmicanimDict, bmicanimName, 1.0, -1, -1, 50, 0, 0, 0, 0)
        bmic_net = netid
        holdingBmic = true
    else
        ClearPedSecondaryTask(GetPlayerPed(PlayerId()))
        DetachEntity(NetToObj(bmic_net), 1, 1)
        DeleteEntity(NetToObj(bmic_net))
        bmic_net = nil
        holdingBmic = false
        usingBmic = false
    end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if holdingBmic then
			while not HasAnimDictLoaded(bmicanimDict) do
				RequestAnimDict(bmicanimDict)
				Citizen.Wait(100)
			end

			if not IsEntityPlayingAnim(PlayerPedId(), bmicanimDict, bmicanimName, 3) then
				TaskPlayAnim(GetPlayerPed(PlayerId()), 1.0, -1, -1, 50, 0, 0, 0, 0) -- 50 = 32 + 16 + 2
				TaskPlayAnim(GetPlayerPed(PlayerId()), bmicanimDict, bmicanimName, 1.0, -1, -1, 50, 0, 0, 0, 0)
			end
			
			DisablePlayerFiring(PlayerId(), true)
			DisableControlAction(0,25,true) -- disable aim
			DisableControlAction(0, 44,  true) -- INPUT_COVER
			DisableControlAction(0,37,true) -- INPUT_SELECT_WEAPON
			SetCurrentPedWeapon(GetPlayerPed(-1), GetHashKey("WEAPON_UNARMED"), true)
			
			if (IsPedInAnyVehicle(GetPlayerPed(-1), -1) and GetPedVehicleSeat(GetPlayerPed(-1)) == -1) or IsPedCuffed(GetPlayerPed(-1)) or holdingMic then
				ClearPedSecondaryTask(GetPlayerPed(-1))
				DetachEntity(NetToObj(bmic_net), 1, 1)
				DeleteEntity(NetToObj(bmic_net))
				bmic_net = nil
				holdingBmic = false
				usingBmic = false
			end
		end
	end
end)

---------------------------------------------------------------------------------------
-- misc functions --
---------------------------------------------------------------------------------------

function drawRct(x,y,width,height,r,g,b,a)
	DrawRect(x + width/2, y + height/2, width, height, r, g, b, a)
end

function Breaking(text)
		SetTextColour(255, 255, 255, 255)
		SetTextFont(8)
		SetTextScale(1.2, 1.2)
		SetTextWrap(0.0, 1.0)
		SetTextCentre(false)
		SetTextDropshadow(0, 0, 0, 0, 255)
		SetTextEdge(1, 0, 0, 0, 205)
		SetTextEntry("STRING")
		AddTextComponentString(text)
		DrawText(0.2, 0.85)
end

function Notification(message)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(message)
	DrawNotification(0, 1)
end

function DisplayNotification(string)
	SetTextComponentFormat("STRING")
	AddTextComponentString(string)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end