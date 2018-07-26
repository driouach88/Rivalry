local MenuLogoSprite = NativeUI.CreateSprite("", "")

local GenderOption = SetupGenderOption(CharacterCreatorMenu)
local HeritageMenu = SetupHeritageMenu(CharacterCreatorMenu)
local FeaturesMenu = SetupFeaturesMenu(CharacterCreatorMenu)
local AppearanceMenu = SetupAppearanceMenu(CharacterCreatorMenu)
local ApparelMenu = SetupApparelMenu(CharacterCreatorMenu)
local SaveOption = SetupSaveOption(CharacterCreatorMenu)
local ModelMenu = SetupModelMenu(CharacterCreatorMenu)

local HairstyleMenu = SetupHairstylesMenu(BarberMenu)
local BeardMenu = SetupBeardsMenu(BarberMenu)
local EyebrowMenu = SetupEyebrowsMenu(BarberMenu)
local ChestMenu = SetupChestMenu(BarberMenu)
local ContactMenu = SetupContactsMenu(BarberMenu)
local FacePaintMenu = SetupFacePaintsMenu(BarberMenu)
local MakeupMenu = SetupMakeupMenu(BarberMenu)
local EyeMakeupMenu = SetupEyeMakeupMenu(MakeupMenu)
local BlushMenu = SetupBlusherMenu(MakeupMenu)
local LipstickMenu = SetupLipstickMenu(MakeupMenu)

CharacterCreatorMenu.Items[2].Activated = function(ParentMenu, SelectedItem)
	CharacterCreatorMenu.Cameras.Face:Switch(CharacterCreatorMenu.Cameras.Default.Handle, 1000, false, false)
end

CharacterCreatorMenu.Items[3].Activated = function(ParentMenu, SelectedItem)
	CharacterCreatorMenu.Cameras.Face:Switch(CharacterCreatorMenu.Cameras.Default.Handle, 1000, false, false)
end

CharacterCreatorMenu.Items[4].Activated = function(ParentMenu, SelectedItem)
	CharacterCreatorMenu.Cameras.Face:Switch(CharacterCreatorMenu.Cameras.Default.Handle, 1000, false, false)
end

BarberMenu.Items[4].Activated = SetPedTopless

PlayerCustomisation.Pool:Add(CharacterCreatorMenu)
PlayerCustomisation.Pool:Add(ModelMenu)
PlayerCustomisation.Pool:Add(BarberMenu)
PlayerCustomisation.Pool:Add(ClothingMenu)
PlayerCustomisation.Pool:Add(MaskMenu)
PlayerCustomisation.Pool:Add(TattooMenu)
PlayerCustomisation.Pool:Add(OutfitMenu)

CharacterCreatorMenu.OnListSelect = function(ParentMenu, SelectedList, NewIndex) 
	if SelectedList == GenderOption then
		SelectedList:Enabled(false)
		local Item = SelectedList:IndexToItem(NewIndex)
		if Item == "Hybrid" then
			for Index = 2, (#ParentMenu.Items - 1) do
				ParentMenu:Visible(false)
				ModelMenu:Visible(true)
				ParentMenu.Items[Index]:Enabled(false)
				ParentMenu.Items[Index]:SetRightBadge(BadgeStyle.Lock)
			end
		else
			UpdateModel(Item.Value)

			AppearanceMenu.Items[1].Items = PlayerCustomisation.Reference.Appearance.Hairstyles[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender]
			ApparelMenu.Items[3].Items = PlayerCustomisation.Reference.Apparel.Hat[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender]
			ApparelMenu.Items[4].Items = PlayerCustomisation.Reference.Apparel.Glasses[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender]

			HeritageMenu.Windows[1]:Index(GetPortraitFromFace("Female", PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].HeadBlend[1]), GetPortraitFromFace("Male", PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].HeadBlend[2]))
			HeritageMenu.Items[1]:Index(GetFaceIndex("Female", PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].HeadBlend[1]))
			HeritageMenu.Items[2]:Index(GetFaceIndex("Male", PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].HeadBlend[2]))
			HeritageMenu.Items[3]:Index(HeritageMenu.Items[3]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].HeadBlend[3]))
			HeritageMenu.Items[4]:Index(HeritageMenu.Items[4]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].HeadBlend[4]))

			FeaturesMenu.Items[1].Panels[1]:CirclePosition(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[8], PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[7])
			FeaturesMenu.Items[2].Panels[1]:CirclePosition(1.0 - PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[12], 0.5)
			FeaturesMenu.Items[3].Panels[1]:CirclePosition(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[1], PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[2])
			FeaturesMenu.Items[4].Panels[1]:CirclePosition(1.0 - PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[3], PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[4])
			FeaturesMenu.Items[5].Panels[1]:CirclePosition(1.0 - PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[6], PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[5])
			FeaturesMenu.Items[6].Panels[1]:CirclePosition(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[10], PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[9])
			FeaturesMenu.Items[7].Panels[1]:CirclePosition(1.0 - PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[11], 0.5)
			FeaturesMenu.Items[8].Panels[1]:CirclePosition(1.0 - PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[13], 0.5)
			FeaturesMenu.Items[9].Panels[1]:CirclePosition(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[14], PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[15])
			FeaturesMenu.Items[10].Panels[1]:CirclePosition(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[17], PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[16])
			FeaturesMenu.Items[11].Panels[1]:CirclePosition(1.0 - PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[18], PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[19])

			AppearanceMenu.Items[1]:Index(AppearanceMenu.Items[1]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Clothing.Drawable[3]))
			AppearanceMenu.Items[1].Panels[1]:CurrentSelection(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].HairColour[1], true)
			AppearanceMenu.Items[1].Panels[2]:CurrentSelection(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].HairColour[2], true)
			AppearanceMenu.Items[2]:Index(AppearanceMenu.Items[2]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[3]))
			AppearanceMenu.Items[2].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[3])
			AppearanceMenu.Items[2].Panels[2]:CurrentSelection(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Colours[3], true)
			AppearanceMenu.Items[3]:Index(AppearanceMenu.Items[3]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[2]))
			AppearanceMenu.Items[3].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[2])
			AppearanceMenu.Items[3].Panels[2]:CurrentSelection(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Colours[2], true)
			AppearanceMenu.Items[4]:Index(AppearanceMenu.Items[4]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[1]))
			AppearanceMenu.Items[4].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[1])
			AppearanceMenu.Items[5]:Index(AppearanceMenu.Items[5]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[4]))
			AppearanceMenu.Items[5].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[4])
			AppearanceMenu.Items[6]:Index(AppearanceMenu.Items[6]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[7]))
			AppearanceMenu.Items[6].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[7])
			AppearanceMenu.Items[7]:Index(AppearanceMenu.Items[7]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[10]))
			AppearanceMenu.Items[7].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[10])
			AppearanceMenu.Items[8]:Index(AppearanceMenu.Items[8]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[8]))
			AppearanceMenu.Items[8].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[8])
			AppearanceMenu.Items[9]:Index(AppearanceMenu.Items[9]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].EyeColour))
			AppearanceMenu.Items[10]:Index(AppearanceMenu.Items[10]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[5]))
			AppearanceMenu.Items[10].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[5])
			AppearanceMenu.Items[11]:Index(AppearanceMenu.Items[11]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[6]))
			AppearanceMenu.Items[11].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[6])
			AppearanceMenu.Items[11].Panels[2]:CurrentSelection(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Colours[6], true)
			AppearanceMenu.Items[12]:Index(AppearanceMenu.Items[12]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[9]))
			AppearanceMenu.Items[12].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[9])
			AppearanceMenu.Items[12].Panels[2]:CurrentSelection(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Colours[9], true)

			AppearanceMenu.Items[1].Panels[2]:Enabled(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Highlights)

			local StyleIndex, OutfitIndex = GetOutfitIndex()

			ApparelMenu.Items[2].Items = PlayerCustomisation.Reference.Apparel.Outfits[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][StyleIndex]
			ApparelMenu.Items[1]:Index(StyleIndex)
			ApparelMenu.Items[2]:Index(OutfitIndex)
			ApparelMenu.Items[3]:Index(GetHatIndex())
			ApparelMenu.Items[4]:Index(GetGlassesIndex())

			for Index = 2, #ParentMenu.Items do
				ParentMenu.Items[Index]:Enabled(true)
				ParentMenu.Items[Index]:SetRightBadge(BadgeStyle.None)
			end

			SetupTattooMenu(TattooMenu)
			UpdateHairstylesMenu(HairstyleMenu)

			AttachEntityToEntity(PlayerCustomisation.Creator.Board.Handle, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
			AttachEntityToEntity(PlayerCustomisation.Creator.Board.RenderTarget.Handle, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
			TaskPlayAnim(PlayerPedId(), PlayerCustomisation.Creator.Board.Dictionary, PlayerCustomisation.Creator.Board.Animation, 8.0, -8, -1, 1, 0, 0, 0, 0)
		end

		SetupOutfitMenu(OutfitMenu)

		SelectedList:Enabled(true)
	end
end

function OpenBarberMenu(LocationIndex)
	if PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender == "Hybrid" then
		for Index = 1, #BarberMenu.Items do
			BarberMenu.Items[Index]:Enabled(false)
			BarberMenu.Items[Index]:SetRightBadge(BadgeStyle.Lock)
		end
	else
		for Index = 1, #BarberMenu.Items do
			BarberMenu.Items[Index]:Enabled(true)
			BarberMenu.Items[Index]:SetRightBadge(BadgeStyle.None)
		end

		for Index = 1, #HairstyleMenu.Items do
			HairstyleMenu.Items[Index]:Text(PlayerCustomisation.Reference.Appearance.Hairstyles[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][Index].Name)
			HairstyleMenu.Items[Index]:SetRightBadge(BadgeStyle.None)
			HairstyleMenu.Items[Index].Panels[1]:CurrentSelection(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].HairColour[1], true)
			HairstyleMenu.Items[Index].Panels[2]:CurrentSelection(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].HairColour[1], true)
			HairstyleMenu.Items[Index].Panels[2]:Enabled(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Highlights)
		end

		HairstyleMenu.Items[GetHairIndex()]:SetRightBadge(BadgeStyle.Barber)

		local BeardIndex = GetBeardIndex() or 1
		local BeardPanelsEnabled = (BeardIndex ~= 1)

		for Index = 1, #BeardMenu.Items do
			BeardMenu.Items[Index]:SetRightBadge(BadgeStyle.None)
			BeardMenu.Items[Index].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[2])
			BeardMenu.Items[Index].Panels[2]:CurrentSelection(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Colours[2], true)
			BeardMenu.Items[Index].Panels[1]:Enabled(BeardPanelsEnabled)
			BeardMenu.Items[Index].Panels[2]:Enabled(BeardPanelsEnabled)
		end

		BeardMenu.Items[BeardIndex]:SetRightBadge(BadgeStyle.Barber)

		local EyebrowIndex = GetEyebrowIndex() or 1
		local EyebrowPanelsEnabled = (EyebrowIndex ~= 1)

		for Index = 1, #BeardMenu.Items do
			EyebrowMenu.Items[Index]:SetRightBadge(BadgeStyle.None)
			EyebrowMenu.Items[Index].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[3])
			EyebrowMenu.Items[Index].Panels[2]:CurrentSelection(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Colours[3], true)
			EyebrowMenu.Items[Index].Panels[1]:Enabled(EyebrowPanelsEnabled)
			EyebrowMenu.Items[Index].Panels[2]:Enabled(EyebrowPanelsEnabled)
		end

		EyebrowMenu.Items[EyebrowIndex]:SetRightBadge(BadgeStyle.Barber)

		if PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender == "Male" then
			local ChestIndex = GetChestIndex() or 1
			local ChestPanelsEnabled = (ChestIndex ~= 1)

			for Index = 1, #ChestMenu.Items do
				ChestMenu.Items[Index]:SetRightBadge(BadgeStyle.None)
				ChestMenu.Items[Index].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[11])
				ChestMenu.Items[Index].Panels[2]:CurrentSelection(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Colours[11], true)
				ChestMenu.Items[Index].Panels[1]:Enabled(ChestPanelsEnabled)
				ChestMenu.Items[Index].Panels[2]:Enabled(ChestPanelsEnabled)
			end

			ChestMenu.Items[ChestIndex]:SetRightBadge(BadgeStyle.Barber)
		else
			BarberMenu.Items[4]:Enabled(false)
			BarberMenu.Items[4]:SetRightBadge(BadgeStyle.Lock)
		end

		for Index = 1, #ContactMenu.Items do
			ContactMenu.Items[Index]:SetRightBadge(BadgeStyle.None)
		end

		ContactMenu.Items[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].EyeColour + 1]:SetRightBadge(BadgeStyle.Barber)

		local FacePaintIndex = GetFacePaintIndex() or 1
		local FacePaintPanelsEnabled = (FacePaintIndex ~= 1)

		for Index = 1, #FacePaintMenu.Items do
			FacePaintMenu.Items[Index]:SetRightBadge(BadgeStyle.None)
			FacePaintMenu.Items[Index].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[5])
			FacePaintMenu.Items[Index].Panels[1]:Enabled(FacePaintPanelsEnabled)
		end

		FacePaintMenu.Items[FacePaintIndex]:SetRightBadge(BadgeStyle.Makeup)

		local EyeMakeupIndex = GetEyeMakeupIndex() or 1
		local EyeMakeupPanelsEnabled = (FacePaintIndex ~= 1)

		for Index = 1, #EyeMakeupMenu.Items do
			EyeMakeupMenu.Items[Index]:SetRightBadge(BadgeStyle.None)
			EyeMakeupMenu.Items[Index].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[5])
			EyeMakeupMenu.Items[Index].Panels[1]:Enabled(EyeMakeupPanelsEnabled)
		end

		EyeMakeupMenu.Items[EyeMakeupIndex]:SetRightBadge(BadgeStyle.Makeup)

		local BlushIndex = GetBlushIndex() or 1
		local BlushPanelsEnabled = (BlushIndex ~= 1)

		for Index = 1, #BlushMenu.Items do
			BlushMenu.Items[Index]:SetRightBadge(BadgeStyle.None)
			BlushMenu.Items[Index].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[6])
			BlushMenu.Items[Index].Panels[2]:CurrentSelection(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Colours[6], true)
			BlushMenu.Items[Index].Panels[1]:Enabled(BlushPanelsEnabled)
			BlushMenu.Items[Index].Panels[2]:Enabled(BlushPanelsEnabled)
		end

		BlushMenu.Items[BlushIndex]:SetRightBadge(BadgeStyle.Makeup)

		local LipstickIndex = GetLipstickIndex() or 1
		local LipstickPanelsEnabled = (LipstickIndex ~= 1)

		for Index = 1, #LipstickMenu.Items do
			LipstickMenu.Items[Index]:SetRightBadge(BadgeStyle.None)
			LipstickMenu.Items[Index].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[9])
			LipstickMenu.Items[Index].Panels[2]:CurrentSelection(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Colours[9], true)
			LipstickMenu.Items[Index].Panels[1]:Enabled(LipstickPanelsEnabled)
			LipstickMenu.Items[Index].Panels[2]:Enabled(LipstickPanelsEnabled)
		end

		LipstickMenu.Items[LipstickIndex]:SetRightBadge(BadgeStyle.Makeup)
	end

	MenuLogoSprite.TxtDictionary = PlayerCustomisation.Locations.Barbers[LocationIndex].Banner
	MenuLogoSprite.TxtName = PlayerCustomisation.Locations.Barbers[LocationIndex].Banner
	BarberMenu:SetBannerSprite(MenuLogoSprite, true)
	MakeupMenu:SetBannerSprite(MenuLogoSprite, true)
	BarberMenu:Visible(true)
end

function OpenClothingMenu(LocationIndex)
	RetrieveComponents()
	RetrieveProps()

	ClothingMenu.Items[1].Data.Items = PlayerCustomisation.Reference.Clothing.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender]

	ClothingMenu.Items[2].Data.Items = PlayerCustomisation.Reference.Clothing.Drawables[PlayerCustomisation.Reference.Clothing.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][1].Name]
	ClothingMenu.Items[2]:Index(ClothingMenu.Items[2]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Clothing.Drawable[PlayerCustomisation.Reference.Clothing.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][1].Value + 1]))

	ClothingMenu.Items[3].Data.Items = PlayerCustomisation.Reference.Clothing.Textures[PlayerCustomisation.Reference.Clothing.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][1].Name][ClothingMenu.Items[2]:Index()]
	ClothingMenu.Items[3]:Index(ClothingMenu.Items[3]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Clothing.Texture[PlayerCustomisation.Reference.Clothing.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][1].Value + 1]))

	ClothingMenu.Items[4].Data.Items = PlayerCustomisation.Reference.Props.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender]

	ClothingMenu.Items[5].Data.Items = PlayerCustomisation.Reference.Props.Drawables[PlayerCustomisation.Reference.Props.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][1].Name]
	ClothingMenu.Items[5]:Index(ClothingMenu.Items[5]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Props.Drawable[PlayerCustomisation.Reference.Props.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][1].Value + 1]))

	ClothingMenu.Items[6].Data.Items = PlayerCustomisation.Reference.Props.Textures[PlayerCustomisation.Reference.Props.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][1].Name][ClothingMenu.Items[2]:Index()]
	ClothingMenu.Items[6]:Index(ClothingMenu.Items[6]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Props.Texture[PlayerCustomisation.Reference.Props.Options[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][1].Value + 1]))

	MenuLogoSprite.TxtDictionary = PlayerCustomisation.Locations.Barbers[LocationIndex].Banner
	MenuLogoSprite.TxtName = PlayerCustomisation.Locations.Barbers[LocationIndex].Banner
	ClothingMenu:SetBannerSprite(MenuLogoSprite, true)

	ClothingMenu:Visible(true)
end

function OpenMaskMenu(LocationIndex)
	if PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender == "Hybrid" then
		for Index = 1, #MaskMenu.Items do
			MaskMenu.Items[Index]:Enabled(false)
			MaskMenu.Items[Index]:SetRightBadge(BadgeStyle.Lock)
		end
	else
		for Index = 1, #MaskMenu.Items do
			MaskMenu.Items[Index]:Enabled(true)
			MaskMenu.Items[Index]:SetRightBadge(BadgeStyle.None)
		end

		for Index = 1, #MaskMenu.Items do
			local Submenu = MaskMenu.Children[MaskMenu.Items[Index]]
			if Submenu then
				for ItemIndex = 1, #Submenu.Items do
					Submenu.Items[ItemIndex]:SetRightBadge(BadgeStyle.None)
				end

				local MaskIndex = GetMaskIndex(Index)

				if MaskIndex ~= nil then
					Submenu.Items[MaskIndex]:SetRightBadge(BadgeStyle.Clothes)
				end
			end
		end
	end

	MenuLogoSprite.TxtDictionary = PlayerCustomisation.Locations.Masks[LocationIndex].Banner
	MenuLogoSprite.TxtName = PlayerCustomisation.Locations.Masks[LocationIndex].Banner
	MaskMenu:SetBannerSprite(MenuLogoSprite, true)
	MaskMenu:Visible(true)
end

function OpenTattooMenu(LocationIndex)
	if PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender == "Hybrid" then
		for Index = 1, #TattooMenu.Items do
			TattooMenu.Items[Index]:Enabled(false)
			TattooMenu.Items[Index]:SetRightBadge(BadgeStyle.Lock)
		end
	else
		for Index = 1, #TattooMenu.Items do
			TattooMenu.Items[Index]:Enabled(true)
			TattooMenu.Items[Index]:SetRightBadge(BadgeStyle.None)
		end

		for Index = 1, #TattooMenu.Items do
			local Submenu = TattooMenu.Children[TattooMenu.Items[Index]]
			if Submenu then
				for ItemIndex = 1, #Submenu.Items do
					if PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Tattoos[PlayerCustomisation.Reference.Tattoos[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][Index][ItemIndex].Decoration] then
						Submenu.Items[ItemIndex]:SetRightBadge(BadgeStyle.Tattoo)
					else
						Submenu.Items[ItemIndex]:SetRightBadge(BadgeStyle.None)
					end
				end
			end
		end
	end

	MenuLogoSprite.TxtDictionary = PlayerCustomisation.Locations.Tattoos[LocationIndex].Banner
	MenuLogoSprite.TxtName = PlayerCustomisation.Locations.Tattoos[LocationIndex].Banner
	TattooMenu:SetBannerSprite(MenuLogoSprite, true)
	TattooMenu:Visible(true)
end

function OpenCharacterCreatorMenu(Name, CharacterId, Gender, Rank)
	Citizen.Wait(5000)

	ClearPedTasks()

	local PlayerCoordinates = GetEntityCoords(PlayerPedId(), false)

	if PlayerCustomisation.Creator.Board.Scaleform.Handle == nil then
		PlayerCustomisation.Creator.Board.Scaleform.Handle = RequestScaleformMovie(PlayerCustomisation.Creator.Board.Scaleform.Name)

		while not HasScaleformMovieLoaded(PlayerCustomisation.Creator.Board.Scaleform.Handle) do
			Citizen.Wait(25)
		end
	end

	PushScaleformMovieFunction(PlayerCustomisation.Creator.Board.Scaleform.Handle, "SET_BOARD")

	PushScaleformMovieFunctionParameterString(Name) -- Header
	PushScaleformMovieFunctionParameterString(CharacterId) -- Inmate number
	PushScaleformMovieFunctionParameterString("Rivalry") -- Bottom text
	PushScaleformMovieFunctionParameterString(Gender) -- Top text
	PushScaleformMovieFunctionParameterInt(0) -- Top text colour

	if tonumber(Rank) then
		PushScaleformMovieFunctionParameterInt(Rank) -- Player rank
		PushScaleformMovieFunctionParameterInt(-1) -- Player rank colour
	end

	PopScaleformMovieFunction()

	RequestModel(PlayerCustomisation.Creator.Board.Model)

	while not HasModelLoaded(PlayerCustomisation.Creator.Board.Model) do
		Citizen.Wait(250)
	end

	PlayerCustomisation.Creator.Board.Handle = CreateObject(GetHashKey(PlayerCustomisation.Creator.Board.Model), PlayerCoordinates.x, PlayerCoordinates.y, PlayerCoordinates.z, false, false)

	AttachEntityToEntity(PlayerCustomisation.Creator.Board.Handle, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)

	RequestModel(PlayerCustomisation.Creator.Board.RenderTarget.Model)

	while not HasModelLoaded(PlayerCustomisation.Creator.Board.RenderTarget.Model) do
		Citizen.Wait(250)
	end

	PlayerCustomisation.Creator.Board.RenderTarget.Handle = CreateObject(GetHashKey(PlayerCustomisation.Creator.Board.RenderTarget.Model), PlayerCoordinates.x, PlayerCoordinates.y, PlayerCoordinates.z, false, false)

	AttachEntityToEntity(PlayerCustomisation.Creator.Board.RenderTarget.Handle, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)

	RequestAnimDict(PlayerCustomisation.Creator.Board.Dictionary)

	while not HasAnimDictLoaded(PlayerCustomisation.Creator.Board.Dictionary) do
		Citizen.Wait(250)
	end

	if not IsNamedRendertargetRegistered(PlayerCustomisation.Creator.Board.RenderTarget.Name) then
		RegisterNamedRendertarget(PlayerCustomisation.Creator.Board.RenderTarget.Name, 0)
	end

	if not IsNamedRendertargetLinked(GetHashKey(PlayerCustomisation.Creator.Board.RenderTarget.Model)) then
		LinkNamedRendertarget(GetHashKey(PlayerCustomisation.Creator.Board.RenderTarget.Model))
	end

	if IsNamedRendertargetRegistered(PlayerCustomisation.Creator.Board.RenderTarget.Name) then
		PlayerCustomisation.Creator.Board.RenderTarget.Id = GetNamedRendertargetRenderId(PlayerCustomisation.Creator.Board.RenderTarget.Name)
	end

	PlayerCustomisation.Creator.Exit = {x = PlayerCoordinates.x, y = PlayerCoordinates.y, z = PlayerCoordinates.z, h = GetEntityHeading(PlayerPedId())}

	TriggerServerEvent("PlayerCustomisation.Instance", "Creator", true)

	SetEntityCoords(PlayerPedId(), PlayerCustomisation.Creator.Entry.x, PlayerCustomisation.Creator.Entry.y, PlayerCustomisation.Creator.Entry.z)
	SetEntityHeading(PlayerPedId(), PlayerCustomisation.Creator.Entry.h)

	CharacterCreatorMenu.Cameras.Face:Create()
	CharacterCreatorMenu.Cameras.Default:Create()

	CharacterCreatorMenu.Cameras.Default:Activate(false, 2000)

	if PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender == "Hybrid" then
		for Index = 2, (#CharacterCreatorMenu.Items - 1) do
			CharacterCreatorMenu:Visible(false)
			ModelMenu:Visible(true)
			CharacterCreatorMenu.Items[Index]:Enabled(false)
			CharacterCreatorMenu.Items[Index]:SetRightBadge(BadgeStyle.Lock)
		end
	else
		AppearanceMenu.Items[1].Items = PlayerCustomisation.Reference.Appearance.Hairstyles[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender]
		ApparelMenu.Items[3].Items = PlayerCustomisation.Reference.Apparel.Hat[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender]
		ApparelMenu.Items[4].Items = PlayerCustomisation.Reference.Apparel.Glasses[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender]

		HeritageMenu.Windows[1]:Index(GetPortraitFromFace("Female", PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].HeadBlend[1]), GetPortraitFromFace("Male", PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].HeadBlend[2]))
		HeritageMenu.Items[1]:Index(GetFaceIndex("Female", PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].HeadBlend[1]))
		HeritageMenu.Items[2]:Index(GetFaceIndex("Male", PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].HeadBlend[2]))
		HeritageMenu.Items[3]:Index(HeritageMenu.Items[3]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].HeadBlend[3]))
		HeritageMenu.Items[4]:Index(HeritageMenu.Items[4]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].HeadBlend[4]))

		FeaturesMenu.Items[1].Panels[1]:CirclePosition(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[8], PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[7])
		FeaturesMenu.Items[2].Panels[1]:CirclePosition(1.0 - PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[12], 0.5)
		FeaturesMenu.Items[3].Panels[1]:CirclePosition(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[1], PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[2])
		FeaturesMenu.Items[4].Panels[1]:CirclePosition(1.0 - PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[3], PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[4])
		FeaturesMenu.Items[5].Panels[1]:CirclePosition(1.0 - PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[6], PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[5])
		FeaturesMenu.Items[6].Panels[1]:CirclePosition(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[10], PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[9])
		FeaturesMenu.Items[7].Panels[1]:CirclePosition(1.0 - PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[11], 0.5)
		FeaturesMenu.Items[8].Panels[1]:CirclePosition(1.0 - PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[13], 0.5)
		FeaturesMenu.Items[9].Panels[1]:CirclePosition(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[14], PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[15])
		FeaturesMenu.Items[10].Panels[1]:CirclePosition(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[17], PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[16])
		FeaturesMenu.Items[11].Panels[1]:CirclePosition(1.0 - PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[18], PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].FacialFeature[19])

		AppearanceMenu.Items[1]:Index(AppearanceMenu.Items[1]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Clothing.Drawable[3]))
		AppearanceMenu.Items[1].Panels[1]:CurrentSelection(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].HairColour[1], true)
		AppearanceMenu.Items[1].Panels[2]:CurrentSelection(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].HairColour[2], true)
		AppearanceMenu.Items[2]:Index(AppearanceMenu.Items[2]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[3]))
		AppearanceMenu.Items[2].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[3])
		AppearanceMenu.Items[2].Panels[2]:CurrentSelection(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Colours[3], true)
		AppearanceMenu.Items[3]:Index(AppearanceMenu.Items[3]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[2]))
		AppearanceMenu.Items[3].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[2])
		AppearanceMenu.Items[3].Panels[2]:CurrentSelection(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Colours[2], true)
		AppearanceMenu.Items[4]:Index(AppearanceMenu.Items[4]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[1]))
		AppearanceMenu.Items[4].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[1])
		AppearanceMenu.Items[5]:Index(AppearanceMenu.Items[5]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[4]))
		AppearanceMenu.Items[5].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[4])
		AppearanceMenu.Items[6]:Index(AppearanceMenu.Items[6]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[7]))
		AppearanceMenu.Items[6].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[7])
		AppearanceMenu.Items[7]:Index(AppearanceMenu.Items[7]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[10]))
		AppearanceMenu.Items[7].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[10])
		AppearanceMenu.Items[8]:Index(AppearanceMenu.Items[8]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[8]))
		AppearanceMenu.Items[8].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[8])
		AppearanceMenu.Items[9]:Index(AppearanceMenu.Items[9]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].EyeColour))
		AppearanceMenu.Items[10]:Index(AppearanceMenu.Items[10]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[5]))
		AppearanceMenu.Items[10].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[5])
		AppearanceMenu.Items[11]:Index(AppearanceMenu.Items[11]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[6]))
		AppearanceMenu.Items[11].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[6])
		AppearanceMenu.Items[11].Panels[2]:CurrentSelection(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Colours[6], true)
		AppearanceMenu.Items[12]:Index(AppearanceMenu.Items[12]:ItemToIndex(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Drawable[9]))
		AppearanceMenu.Items[12].Panels[1]:Percentage(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Opacity[9])
		AppearanceMenu.Items[12].Panels[2]:CurrentSelection(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Overlay.Colours[9], true)

		AppearanceMenu.Items[1].Panels[2]:Enabled(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type][PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender].Highlights)

		local StyleIndex, OutfitIndex = GetOutfitIndex()

		ApparelMenu.Items[2].Items = PlayerCustomisation.Reference.Apparel.Outfits[PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender][StyleIndex]
		ApparelMenu.Items[1]:Index(StyleIndex or 1)
		ApparelMenu.Items[2]:Index(OutfitIndex or 1)
		ApparelMenu.Items[3]:Index(GetHatIndex() or 1)
		ApparelMenu.Items[4]:Index(GetGlassesIndex() or 1)

		for Index = 2, #CharacterCreatorMenu.Items do
			CharacterCreatorMenu.Items[Index]:Enabled(true)
			CharacterCreatorMenu.Items[Index]:SetRightBadge(BadgeStyle.None)
		end

		SetupTattooMenu(TattooMenu)
		UpdateHairstylesMenu(HairstyleMenu)
	end

	SetupOutfitMenu(OutfitMenu)

	TaskPlayAnim(PlayerPedId(), PlayerCustomisation.Creator.Board.Dictionary, PlayerCustomisation.Creator.Board.Animation, 8.0, -8, -1, 1, 0, 0, 0, 0)

	CharacterCreatorMenu:Visible(true)
end

PlayerCustomisation.Pool:RefreshIndex()

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		PlayerCustomisation.Pool:ProcessMenus()
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsDisabledControlPressed(0, 51) then
			if CharacterCreatorMenu:Visible() or HeritageMenu:Visible() or FeaturesMenu:Visible() or AppearanceMenu:Visible() or ApparelMenu:Visible() then
				local PlayerPed = PlayerPedId()

				SetEntityHeading(PlayerPed, GetEntityHeading(PlayerPed) + 2)
			end
		end

		if IsDisabledControlPressed(0, 44) then
			if CharacterCreatorMenu:Visible() or HeritageMenu:Visible() or FeaturesMenu:Visible() or AppearanceMenu:Visible() or ApparelMenu:Visible() then
				local PlayerPed = PlayerPedId()

				SetEntityHeading(PlayerPed, GetEntityHeading(PlayerPed) - 2)
			end
		end

		if PlayerCustomisation.Creator.Board.RenderTarget.Id ~= -1 and HasScaleformMovieLoaded(PlayerCustomisation.Creator.Board.Scaleform.Handle) then
			SetTextRenderId(PlayerCustomisation.Creator.Board.RenderTarget.Id)
			DrawScaleformMovie(PlayerCustomisation.Creator.Board.Scaleform.Handle, 0.405, 0.37, 0.81, 0.74, 255, 255, 255, 255)
			SetTextRenderId(1)
		end
	end
end)

Citizen.CreateThread(function()
	local Player = {
		Coordinates = GetEntityCoords(PlayerPedId(), false)
	}
	while true do
		Citizen.Wait(0)
		Player.Coordinates = GetEntityCoords(PlayerPedId(), false)

		for Index = 1, #PlayerCustomisation.Locations.Barbers do
			local Distance = GetDistanceBetweenCoords(Player.Coordinates.x, Player.Coordinates.y, Player.Coordinates.z, PlayerCustomisation.Locations.Barbers[Index].Marker.x, PlayerCustomisation.Locations.Barbers[Index].Marker.y, PlayerCustomisation.Locations.Barbers[Index].Marker.z, true)
			if Distance < 20 then
				RenderMarker(25, PlayerCustomisation.Locations.Barbers[Index].Marker.x, PlayerCustomisation.Locations.Barbers[Index].Marker.y, PlayerCustomisation.Locations.Barbers[Index].Marker.z, 2.0, 2.0, 2.5, 255, 255, 0, 255)
				if Distance < 2 then
					if IsControlJustPressed(1, 51) then
						if not BarberMenu:Visible() then
							OpenBarberMenu(Index)
						else
							BarberMenu:Visible(false)
						end
					end
				elseif Distance > 2 then
					BarberMenu:Visible(false)
				end
			end
		end

		for Index = 1, #PlayerCustomisation.Locations.Clothing do
			local Distance = GetDistanceBetweenCoords(Player.Coordinates.x, Player.Coordinates.y, Player.Coordinates.z, PlayerCustomisation.Locations.Clothing[Index].Marker.x, PlayerCustomisation.Locations.Clothing[Index].Marker.y, PlayerCustomisation.Locations.Clothing[Index].Marker.z, true)
			if Distance < 20 then
				RenderMarker(25, PlayerCustomisation.Locations.Clothing[Index].Marker.x, PlayerCustomisation.Locations.Clothing[Index].Marker.y, PlayerCustomisation.Locations.Clothing[Index].Marker.z, 2.0, 2.0, 2.5, 255, 255, 0, 255)
				if Distance < 2 then
					if IsControlJustPressed(1, 51) then
						if not ClothingMenu:Visible() then
							OpenClothingMenu(Index)
						else
							ClothingMenu:Visible(false)
						end
					end
				elseif Distance > 2 then
					ClothingMenu:Visible(false)
				end
			end
		end

		for Index = 1, #PlayerCustomisation.Locations.Masks do
			local Distance = GetDistanceBetweenCoords(Player.Coordinates.x, Player.Coordinates.y, Player.Coordinates.z, PlayerCustomisation.Locations.Masks[Index].Marker.x, PlayerCustomisation.Locations.Masks[Index].Marker.y, PlayerCustomisation.Locations.Masks[Index].Marker.z, true)
			if Distance < 20 then
				RenderMarker(25, PlayerCustomisation.Locations.Masks[Index].Marker.x, PlayerCustomisation.Locations.Masks[Index].Marker.y, PlayerCustomisation.Locations.Masks[Index].Marker.z, 2.0, 2.0, 2.5, 255, 255, 0, 255)
				if Distance < 2 then
					if IsControlJustPressed(1, 51) then
						if not MaskMenu:Visible() then
							OpenMaskMenu(Index)
						else
							MaskMenu:Visible(false)
						end
					end
				elseif Distance > 2 then
					MaskMenu:Visible(false)
				end
			end
		end

		for Index = 1, #PlayerCustomisation.Locations.Tattoos do
			local Distance = GetDistanceBetweenCoords(Player.Coordinates.x, Player.Coordinates.y, Player.Coordinates.z, PlayerCustomisation.Locations.Tattoos[Index].Marker.x, PlayerCustomisation.Locations.Tattoos[Index].Marker.y, PlayerCustomisation.Locations.Tattoos[Index].Marker.z, true)
			if Distance < 20 then
				RenderMarker(25, PlayerCustomisation.Locations.Tattoos[Index].Marker.x, PlayerCustomisation.Locations.Tattoos[Index].Marker.y, PlayerCustomisation.Locations.Tattoos[Index].Marker.z, 2.0, 2.0, 2.5, 255, 255, 0, 255)
				if Distance < 2 then
					if IsControlJustPressed(1, 51) then
						if not TattooMenu:Visible() then
							OpenTattooMenu(Index)
						else
							TattooMenu:Visible(false)
						end
					end
				elseif Distance > 2 then
					TattooMenu:Visible(false)
				end
			end
		end

		for Index = 1, #PlayerCustomisation.Locations.Outfits do
			local Distance = GetDistanceBetweenCoords(Player.Coordinates.x, Player.Coordinates.y, Player.Coordinates.z, PlayerCustomisation.Locations.Outfits[Index].Marker.x, PlayerCustomisation.Locations.Outfits[Index].Marker.y, PlayerCustomisation.Locations.Outfits[Index].Marker.z, true)
			if Distance < 20 then
				RenderMarker(25, PlayerCustomisation.Locations.Outfits[Index].Marker.x, PlayerCustomisation.Locations.Outfits[Index].Marker.y, PlayerCustomisation.Locations.Outfits[Index].Marker.z, 2.0, 2.0, 2.5, 255, 255, 0, 255)
				if Distance < 2 then
					if IsControlJustPressed(1, 51) then
						OutfitMenu:Visible(not OutfitMenu:Visible())
					end
				elseif Distance > 2 then
					OutfitMenu:Visible(false)
				end
			end
		end
	end
end)

RegisterNetEvent("PlayerCustomisation.ModelType")
AddEventHandler("PlayerCustomisation.ModelType", function(Type, Name, CharacterId, Gender)
	if PlayerCustomisation.PlayerData.Types[Type] then
		PlayerCustomisation.PlayerData.Type = Type

		UpdateModel(PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Model)

		if PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Gender ~= "Hybrid" then
			SetupTattooMenu(TattooMenu)
			UpdateHairstylesMenu(HairstyleMenu)
		end

		SetupOutfitMenu(OutfitMenu)

		UpdatePlayer()

		if not PlayerCustomisation.PlayerData.Types[PlayerCustomisation.PlayerData.Type].Creator then
			OpenCharacterCreatorMenu(Name, CharacterId, Gender)
		end
	end
end)

RegisterNetEvent("PlayerCustomisation.Sync")
AddEventHandler("PlayerCustomisation.Sync", function(Instances)
	PlayerCustomisation.Instances = Instances
end)

RegisterNetEvent("PlayerCustomisation.Sync.PlayerData")
AddEventHandler("PlayerCustomisation.Sync.PlayerData", function(PlayerData, Type)
	PlayerCustomisation.PlayerData = PlayerData

	if Type then
		TriggerServerEvent("PlayerCustomisation.ModelType", Type)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		for Instance, Players in pairs(PlayerCustomisation.Instances) do
			for PlayerServerId, _ in pairs(Players) do
				local Player = GetPlayerFromServerId(PlayerServerId)
				if NetworkIsPlayerActive(Player) then
					local PlayerPed = PlayerPedId()
					local OtherPed = GetPlayerPed(Player)
					if OtherPed ~= PlayerPed then
						SetEntityLocallyInvisible(OtherPed)
						SetEntityNoCollisionEntity(PlayerPed, OtherPed, true)
					else
						SetEntityLocallyVisible(PlayerPed)
					end
				end
			end
		end
	end
end)

RegisterNetEvent("PlayerCustomisation.OpenCreator")
AddEventHandler("PlayerCustomisation.OpenCreator", function(Name, CharacterId, Gender)
	OpenCharacterCreatorMenu(Name, CharacterId, Gender)
end)