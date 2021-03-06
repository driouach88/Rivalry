function CreateClothingMenu()
	PlayerCustomisation.Pool = NativeUI.CreatePool()
	
	local ClothingMenu = NativeUI.CreateMenu("", "OPTIONS", 0, 0)

	ClothingMenu.Settings.MouseEdgeEnabled = false

	ClothingMenu:RemoveEnabledControl(0, 31)
	ClothingMenu:RemoveEnabledControl(0, 30)
	ClothingMenu:RemoveEnabledControl(0, 22)

	ClothingMenu.Cameras = {
		Camera.New(),
		Camera.New(),
	}

	ClothingMenu.CameraCoordinates = {
		Clothing = {},
		Props = {},
	}

	ClothingMenu.OnMenuClosed = function(ParentMenu)
		exports["core_modules"]:StanceAllowed(true)
		exports["core_modules"]:TurnOffHudElements(false)
		TriggerEvent("chat:disable", false)
		
		PlayerCustomisation.Instanced = false
		TriggerServerEvent("PlayerCustomisation.Instance", false)
		TriggerServerEvent("PlayerCustomisation.Update", PlayerCustomisation.PlayerData.Type, PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type])

		FreezeEntityPosition(PlayerPedId(), false)

		ClothingMenu.CameraCoordinates.Clothing = {}
		ClothingMenu.CameraCoordinates.Props = {}

		ParentMenu.Cameras[1]:Deactivate()
		ParentMenu.Cameras[2]:Deactivate()
		ParentMenu.Cameras[1]:Destroy()
		ParentMenu.Cameras[2]:Destroy()

		PlayerCustomisation.Pool:Remove()

		collectgarbage()
	end

	local ClothingComponentItem = NativeUI.CreateProgressItem("Clothing", PlayerCustomisation.Reference.Clothing.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender], 1, "", false)
	local ClothingDrawableItem = NativeUI.CreateProgressItem("Clothing Drawables", {}, 1, "", true)
	local ClothingTextureItem = NativeUI.CreateProgressItem("Clothing Textures", {}, 1, "", true)
	local PropsComponentItem = NativeUI.CreateProgressItem("Accessories", PlayerCustomisation.Reference.Props.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender], 1, "", false)
	local PropsDrawableItem = NativeUI.CreateProgressItem("Accessory Drawables", {}, 1, "", true)
	local PropsTextureItem = NativeUI.CreateProgressItem("Accessory Textures", {}, 1, "", true)

	ClothingComponentItem.OnProgressChanged = function(ParentMenu, SelectedItem, NewIndex)
		ClothingDrawableItem.Data.Items = PlayerCustomisation.Reference.Clothing.Drawables[PlayerCustomisation.Reference.Clothing.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][NewIndex].Name] or {0}
		ClothingDrawableItem:Index(ClothingDrawableItem:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Clothing.Drawable[PlayerCustomisation.Reference.Clothing.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][NewIndex].Value + 1]))

		ClothingTextureItem.Data.Items = PlayerCustomisation.Reference.Clothing.Textures[PlayerCustomisation.Reference.Clothing.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][NewIndex].Name][ClothingDrawableItem:Index()] or {0}
		ClothingTextureItem:Index(ClothingTextureItem:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Clothing.Texture[PlayerCustomisation.Reference.Clothing.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][NewIndex].Value + 1]))

		if ParentMenu.Cameras[1]:Rendering() then
			ParentMenu.Cameras[2]:Position(table.unpack(ClothingMenu.CameraCoordinates.Clothing[PlayerCustomisation.Reference.Clothing.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][NewIndex].Value + 1]))
			ParentMenu.Cameras[2]:Switch(ParentMenu.Cameras[1].Handle, 250, false, false)
		else
			ParentMenu.Cameras[1]:Position(table.unpack(ClothingMenu.CameraCoordinates.Clothing[PlayerCustomisation.Reference.Clothing.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][NewIndex].Value + 1]))
			ParentMenu.Cameras[1]:Switch(ParentMenu.Cameras[2].Handle, 250, false, false)
		end
	end
	ClothingDrawableItem.OnProgressChanged = function(ParentMenu, SelectedItem, NewIndex)
		local Item = SelectedItem:IndexToItem(NewIndex)
		local ClothingComponentIndex = ClothingComponentItem:Index()

		PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Clothing.Drawable[PlayerCustomisation.Reference.Clothing.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][ClothingComponentIndex].Value + 1] = Item

		ClothingTextureItem.Data.Items = PlayerCustomisation.Reference.Clothing.Textures[PlayerCustomisation.Reference.Clothing.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][ClothingComponentIndex].Name][NewIndex] or {0}
		ClothingTextureItem:Index(1)

		PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Clothing.Texture[PlayerCustomisation.Reference.Clothing.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][ClothingComponentIndex].Value + 1] = ClothingTextureItem.Data.Items[1]

		UpdatePlayer()
	end
	ClothingTextureItem.OnProgressChanged = function(ParentMenu, SelectedItem, NewIndex)
		local Item = SelectedItem:IndexToItem(NewIndex)
		local ClothingComponentIndex = ClothingComponentItem:Index()

		PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Clothing.Texture[PlayerCustomisation.Reference.Clothing.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][ClothingComponentIndex].Value + 1] = Item
		
		UpdatePlayer()
	end
	PropsComponentItem.OnProgressChanged = function(ParentMenu, SelectedItem, NewIndex)
		PropsDrawableItem.Data.Items = PlayerCustomisation.Reference.Props.Drawables[PlayerCustomisation.Reference.Props.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][NewIndex].Name] or {0}
		PropsDrawableItem:Index(PropsDrawableItem:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Props.Drawable[PlayerCustomisation.Reference.Props.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][NewIndex].Value + 1]))

		PropsTextureItem.Data.Items = PlayerCustomisation.Reference.Props.Textures[PlayerCustomisation.Reference.Props.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][NewIndex].Name][PropsDrawableItem:Index()] or {0}
		PropsTextureItem:Index(PropsTextureItem:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Props.Texture[PlayerCustomisation.Reference.Props.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][NewIndex].Value + 1]))

		if ParentMenu.Cameras[1]:Rendering() then
			ParentMenu.Cameras[2]:Position(table.unpack(ClothingMenu.CameraCoordinates.Props[PlayerCustomisation.Reference.Props.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][NewIndex].Value + 1]))
			ParentMenu.Cameras[2]:Switch(ParentMenu.Cameras[1].Handle, 250, false, false)
		else
			ParentMenu.Cameras[1]:Position(table.unpack(ClothingMenu.CameraCoordinates.Props[PlayerCustomisation.Reference.Props.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][NewIndex].Value + 1]))
			ParentMenu.Cameras[1]:Switch(ParentMenu.Cameras[2].Handle, 250, false, false)
		end
	end
	PropsDrawableItem.OnProgressChanged = function(ParentMenu, SelectedItem, NewIndex)
		local Item = SelectedItem:IndexToItem(NewIndex)
		local PropsComponentIndex = PropsComponentItem:Index()

		if Item == -1 then
			ClearPedProp(PlayerPedId(), PlayerCustomisation.Reference.Props.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][PropsComponentIndex].Value)
		end

		PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Props.Drawable[PlayerCustomisation.Reference.Props.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][PropsComponentIndex].Value + 1] = Item

		PropsTextureItem.Data.Items = PlayerCustomisation.Reference.Props.Textures[PlayerCustomisation.Reference.Props.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][PropsComponentIndex].Name][NewIndex] or {0}
		PropsTextureItem:Index(1)

		PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Props.Texture[PlayerCustomisation.Reference.Props.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][PropsComponentIndex].Value + 1] = PropsTextureItem.Data.Items[1]

		UpdatePlayer()
	end
	PropsTextureItem.OnProgressChanged = function(ParentMenu, SelectedItem, NewIndex)
		local Item = SelectedItem:IndexToItem(NewIndex)
		local PropsComponentIndex = PropsComponentItem:Index()

		PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Props.Texture[PlayerCustomisation.Reference.Props.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][PropsComponentIndex].Value + 1] = Item
		
		UpdatePlayer()
	end

	ClothingMenu.OnIndexChange = function(ParentMenu, NewIndex)
		if ParentMenu.Cameras[1]:Rendering() then
			if NewIndex < 4 then
				if ParentMenu.Items[1]:Enabled() then
					ParentMenu.Cameras[2]:Position(table.unpack(ClothingMenu.CameraCoordinates.Clothing[PlayerCustomisation.Reference.Clothing.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][ParentMenu.Items[1]:Index()].Value + 1]))
				end
			else
				if ParentMenu.Items[4]:Enabled() then
					ParentMenu.Cameras[2]:Position(table.unpack(ClothingMenu.CameraCoordinates.Props[PlayerCustomisation.Reference.Props.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][ParentMenu.Items[4]:Index()].Value + 1]))
				end
			end

			ParentMenu.Cameras[2]:Switch(ParentMenu.Cameras[1].Handle, 250, false, false)
		else
			if NewIndex < 4 then
				if ParentMenu.Items[1]:Enabled() then
					ParentMenu.Cameras[1]:Position(table.unpack(ClothingMenu.CameraCoordinates.Clothing[PlayerCustomisation.Reference.Clothing.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][ParentMenu.Items[1]:Index()].Value + 1]))
				end
			else
				if ParentMenu.Items[4]:Enabled() then
					ParentMenu.Cameras[1]:Position(table.unpack(ClothingMenu.CameraCoordinates.Props[PlayerCustomisation.Reference.Props.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][ParentMenu.Items[4]:Index()].Value + 1]))
				end
			end

			ParentMenu.Cameras[1]:Switch(ParentMenu.Cameras[2].Handle, 250, false, false)
		end
	end

	ClothingMenu:AddItem(ClothingComponentItem)
	ClothingMenu:AddItem(ClothingDrawableItem)
	ClothingMenu:AddItem(ClothingTextureItem)
	ClothingMenu:AddItem(PropsComponentItem)
	ClothingMenu:AddItem(PropsDrawableItem)
	ClothingMenu:AddItem(PropsTextureItem)

	ClothingMenu:AddInstructionButton({GetControlInstructionalButton(0, 51, 0), "Turn Right"})
	ClothingMenu:AddInstructionButton({GetControlInstructionalButton(0, 44, 0), "Turn Left"})

	PlayerCustomisation.Pool:Add(ClothingMenu)
	PlayerCustomisation.Pool:RefreshIndex()

	return ClothingMenu
end