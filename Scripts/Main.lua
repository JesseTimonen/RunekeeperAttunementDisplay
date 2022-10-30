AttunementWindow = class (Turbine.UI.Window)

function AttunementWindow:Constructor()
	Turbine.UI.Window.Constructor(self)

	self:SetSize(options["attunementBarLenght"] * 9 + options["attunementBarGap"] * 8, options["attunementBarHeight"] + 20)
	self:SetPosition(options["xPos"], options["yPos"])
    self:SetWantsKeyEvents(true);
	self:SetVisible(true)
	if (options["hideOutOfCombat"]) then
        self:SetOpacity(0)
    else
        self:SetOpacity(1)
    end

    -- Hide the UI with F12 --
    self.KeyDown = function( sender, args)
        if (args.Action == 268435635) then
            self:SetVisible(not self:IsVisible());
        end
    end


	self.Attunement_label = Turbine.UI.Label()
	self.Attunement_label:SetParent(self)
    self.Attunement_label:SetSize(options["attunementBarHeight"] + 50, options["attunementBarHeight"] + 20)
	self.Attunement_label:SetPosition((self:GetWidth() / 2) - (self.Attunement_label:GetWidth() / 2), (self:GetHeight() / 2) - (self.Attunement_label:GetHeight() / 2))
    self.Attunement_label:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter)
    self.Attunement_label:SetVisible(options["displayNumber"])
	self.Attunement_label:SetFont(Turbine.UI.Lotro.Font.TrajanProBold30)
    self.Attunement_label:SetText("0")
    self.Attunement_label:SetZOrder(2)
    self.Attunement_label:SetForeColor(Turbine.UI.Color.White)
    self.Attunement_label:SetOutlineColor(Turbine.UI.Color.Black)
    self.Attunement_label:SetFontStyle(Turbine.UI.FontStyle.Outline);


	self.Attunement_1_parent = Turbine.UI.Control()
	self.Attunement_1_parent:SetParent(self)
	self.Attunement_1_parent:SetSize(options["attunementBarLenght"], options["attunementBarHeight"])
    self.Attunement_1_parent:SetPosition(0, (self:GetHeight() / 2) - (self.Attunement_1_parent:GetHeight() / 2))
	self.Attunement_1_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Attunement_1_parent:SetVisible(true)
    self.Attunement_1_child = Turbine.UI.Control()
	self.Attunement_1_child:SetParent(self.Attunement_1_parent)
	self.Attunement_1_child:SetPosition(1, 1)
	self.Attunement_1_child:SetSize(self.Attunement_1_parent:GetWidth() - 2, self.Attunement_1_parent:GetHeight() - 2)
	self.Attunement_1_child:SetBackColor(Turbine.UI.Color.Black)
    self.Attunement_1_child:SetVisible(true)


    self.Attunement_2_parent = Turbine.UI.Control()
	self.Attunement_2_parent:SetParent(self)
	self.Attunement_2_parent:SetSize(options["attunementBarLenght"], options["attunementBarHeight"])
    self.Attunement_2_parent:SetPosition((options["attunementBarLenght"] + options["attunementBarGap"]), (self:GetHeight() / 2) - (self.Attunement_2_parent:GetHeight() / 2))
	self.Attunement_2_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Attunement_2_parent:SetVisible(true)
    self.Attunement_2_child = Turbine.UI.Control()
	self.Attunement_2_child:SetParent(self.Attunement_2_parent)
	self.Attunement_2_child:SetPosition(1, 1)
	self.Attunement_2_child:SetSize(self.Attunement_2_parent:GetWidth() - 2, self.Attunement_2_parent:GetHeight() - 2)
	self.Attunement_2_child:SetBackColor(Turbine.UI.Color.Black)
    self.Attunement_2_child:SetVisible(true)


    self.Attunement_3_parent = Turbine.UI.Control()
	self.Attunement_3_parent:SetParent(self)
	self.Attunement_3_parent:SetSize(options["attunementBarLenght"], options["attunementBarHeight"])
    self.Attunement_3_parent:SetPosition((options["attunementBarLenght"] + options["attunementBarGap"]) * 2, (self:GetHeight() / 2) - (self.Attunement_3_parent:GetHeight() / 2))
	self.Attunement_3_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Attunement_3_parent:SetVisible(true)
    self.Attunement_3_child = Turbine.UI.Control()
	self.Attunement_3_child:SetParent(self.Attunement_3_parent)
	self.Attunement_3_child:SetPosition(1, 1)
	self.Attunement_3_child:SetSize(self.Attunement_3_parent:GetWidth() - 2, self.Attunement_3_parent:GetHeight() - 2)
	self.Attunement_3_child:SetBackColor(Turbine.UI.Color.Black)
    self.Attunement_3_child:SetVisible(true)


    self.Attunement_4_parent = Turbine.UI.Control()
	self.Attunement_4_parent:SetParent(self)
	self.Attunement_4_parent:SetSize(options["attunementBarLenght"], options["attunementBarHeight"])
    self.Attunement_4_parent:SetPosition((options["attunementBarLenght"] + options["attunementBarGap"]) * 3, (self:GetHeight() / 2) - (self.Attunement_4_parent:GetHeight() / 2))
	self.Attunement_4_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Attunement_4_parent:SetVisible(true)
    self.Attunement_4_child = Turbine.UI.Control()
	self.Attunement_4_child:SetParent(self.Attunement_4_parent)
	self.Attunement_4_child:SetPosition(1, 1)
	self.Attunement_4_child:SetSize(self.Attunement_4_parent:GetWidth() - 2, self.Attunement_4_parent:GetHeight() - 2)
	self.Attunement_4_child:SetBackColor(Turbine.UI.Color.Black)
    self.Attunement_4_child:SetVisible(true)


    self.Attunement_5_parent = Turbine.UI.Control()
	self.Attunement_5_parent:SetParent(self)
	self.Attunement_5_parent:SetSize(options["attunementBarLenght"], options["attunementBarHeight"])
    self.Attunement_5_parent:SetPosition((options["attunementBarLenght"] + options["attunementBarGap"]) * 4, (self:GetHeight() / 2) - (self.Attunement_5_parent:GetHeight() / 2))
	self.Attunement_5_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Attunement_5_parent:SetVisible(true)
    self.Attunement_5_child = Turbine.UI.Control()
	self.Attunement_5_child:SetParent(self.Attunement_5_parent)
	self.Attunement_5_child:SetPosition(1, 1)
	self.Attunement_5_child:SetSize(self.Attunement_5_parent:GetWidth() - 2, self.Attunement_5_parent:GetHeight() - 2)
	self.Attunement_5_child:SetBackColor(Turbine.UI.Color.Black)
    self.Attunement_5_child:SetVisible(true)


    self.Attunement_6_parent = Turbine.UI.Control()
	self.Attunement_6_parent:SetParent(self)
	self.Attunement_6_parent:SetSize(options["attunementBarLenght"], options["attunementBarHeight"])
    self.Attunement_6_parent:SetPosition((options["attunementBarLenght"] + options["attunementBarGap"]) * 5, (self:GetHeight() / 2) - (self.Attunement_6_parent:GetHeight() / 2))
	self.Attunement_6_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Attunement_6_parent:SetVisible(true)
    self.Attunement_6_child = Turbine.UI.Control()
	self.Attunement_6_child:SetParent(self.Attunement_6_parent)
	self.Attunement_6_child:SetPosition(1, 1)
	self.Attunement_6_child:SetSize(self.Attunement_6_parent:GetWidth() - 2, self.Attunement_6_parent:GetHeight() - 2)
	self.Attunement_6_child:SetBackColor(Turbine.UI.Color.Black)
    self.Attunement_6_child:SetVisible(true)


    self.Attunement_7_parent = Turbine.UI.Control()
	self.Attunement_7_parent:SetParent(self)
	self.Attunement_7_parent:SetSize(options["attunementBarLenght"], options["attunementBarHeight"])
    self.Attunement_7_parent:SetPosition((options["attunementBarLenght"] + options["attunementBarGap"]) * 6, (self:GetHeight() / 2) - (self.Attunement_7_parent:GetHeight() / 2))
	self.Attunement_7_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Attunement_7_parent:SetVisible(true)
    self.Attunement_7_child = Turbine.UI.Control()
	self.Attunement_7_child:SetParent(self.Attunement_7_parent)
	self.Attunement_7_child:SetPosition(1, 1)
	self.Attunement_7_child:SetSize(self.Attunement_7_parent:GetWidth() - 2, self.Attunement_7_parent:GetHeight() - 2)
	self.Attunement_7_child:SetBackColor(Turbine.UI.Color.Black)
    self.Attunement_7_child:SetVisible(true)


    self.Attunement_8_parent = Turbine.UI.Control()
	self.Attunement_8_parent:SetParent(self)
	self.Attunement_8_parent:SetSize(options["attunementBarLenght"], options["attunementBarHeight"])
    self.Attunement_8_parent:SetPosition((options["attunementBarLenght"] + options["attunementBarGap"]) * 7, (self:GetHeight() / 2) - (self.Attunement_8_parent:GetHeight() / 2))
	self.Attunement_8_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Attunement_8_parent:SetVisible(true)
    self.Attunement_8_child = Turbine.UI.Control()
	self.Attunement_8_child:SetParent(self.Attunement_8_parent)
	self.Attunement_8_child:SetPosition(1, 1)
	self.Attunement_8_child:SetSize(self.Attunement_8_parent:GetWidth() - 2, self.Attunement_8_parent:GetHeight() - 2)
	self.Attunement_8_child:SetBackColor(Turbine.UI.Color.Black)
    self.Attunement_8_child:SetVisible(true)


    self.Attunement_9_parent = Turbine.UI.Control()
	self.Attunement_9_parent:SetParent(self)
	self.Attunement_9_parent:SetSize(options["attunementBarLenght"], options["attunementBarHeight"])
    self.Attunement_9_parent:SetPosition((options["attunementBarLenght"] + options["attunementBarGap"]) * 8, (self:GetHeight() / 2) - (self.Attunement_9_parent:GetHeight() / 2))
	self.Attunement_9_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Attunement_9_parent:SetVisible(true)
    self.Attunement_9_child = Turbine.UI.Control()
	self.Attunement_9_child:SetParent(self.Attunement_9_parent)
	self.Attunement_9_child:SetPosition(1, 1)
	self.Attunement_9_child:SetSize(self.Attunement_9_parent:GetWidth() - 2, self.Attunement_9_parent:GetHeight() - 2)
	self.Attunement_9_child:SetBackColor(Turbine.UI.Color.Black)
    self.Attunement_9_child:SetVisible(true)


    self.localPlayer = Turbine.Gameplay.LocalPlayer.GetInstance();
    self.localPlayer.InCombatChanged = function(sender, args)
        if (options["hideOutOfCombat"]) then
            self:SetWantsUpdates(true);
        end
    end
    self.localPlayer.InCombatChanged();

    self.Update = function()
        if (self.localPlayer:IsInCombat()) then
            self:SetOpacity(self:GetOpacity() + 0.02);
            if (self:GetOpacity() >= 1.0) then
                self:SetWantsUpdates(false);
            end
        else
            self:SetOpacity(self:GetOpacity() - 0.02);
            if (self:GetOpacity() <= 0) then
                self:SetWantsUpdates(false);
            end
        end
    end


    self.HunterAttunementDisplay = Turbine.Gameplay.LocalPlayer.GetInstance():GetClassAttributes();
    self.HunterAttunementDisplay.AttunementChanged = function(sender, args)

		local _current_attunement = self.HunterAttunementDisplay:GetAttunement();

		if (_current_attunement <= 1) then
			self.Attunement_label:SetText("9")
			self.Attunement_1_child:SetBackColor(options["pip_9_dps_color"])
			self.Attunement_2_child:SetBackColor(options["pip_9_dps_color"])
			self.Attunement_3_child:SetBackColor(options["pip_9_dps_color"])
			self.Attunement_4_child:SetBackColor(options["pip_9_dps_color"])
			self.Attunement_5_child:SetBackColor(options["pip_9_dps_color"])
			self.Attunement_6_child:SetBackColor(options["pip_9_dps_color"])
			self.Attunement_7_child:SetBackColor(options["pip_9_dps_color"])
			self.Attunement_8_child:SetBackColor(options["pip_9_dps_color"])
			self.Attunement_9_child:SetBackColor(options["pip_9_dps_color"])
		elseif (_current_attunement == 2) then
			self.Attunement_label:SetText("8")
			self.Attunement_1_child:SetBackColor(options["pip_8_dps_color"])
			self.Attunement_2_child:SetBackColor(options["pip_8_dps_color"])
			self.Attunement_3_child:SetBackColor(options["pip_8_dps_color"])
			self.Attunement_4_child:SetBackColor(options["pip_8_dps_color"])
			self.Attunement_5_child:SetBackColor(options["pip_8_dps_color"])
			self.Attunement_6_child:SetBackColor(options["pip_8_dps_color"])
			self.Attunement_7_child:SetBackColor(options["pip_8_dps_color"])
			self.Attunement_8_child:SetBackColor(options["pip_8_dps_color"])
			self.Attunement_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_attunement == 3) then
			self.Attunement_label:SetText("7")
			self.Attunement_1_child:SetBackColor(options["pip_7_dps_color"])
			self.Attunement_2_child:SetBackColor(options["pip_7_dps_color"])
			self.Attunement_3_child:SetBackColor(options["pip_7_dps_color"])
			self.Attunement_4_child:SetBackColor(options["pip_7_dps_color"])
			self.Attunement_5_child:SetBackColor(options["pip_7_dps_color"])
			self.Attunement_6_child:SetBackColor(options["pip_7_dps_color"])
			self.Attunement_7_child:SetBackColor(options["pip_7_dps_color"])
			self.Attunement_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_attunement == 4) then
			self.Attunement_label:SetText("6")
			self.Attunement_1_child:SetBackColor(options["pip_6_dps_color"])
			self.Attunement_2_child:SetBackColor(options["pip_6_dps_color"])
			self.Attunement_3_child:SetBackColor(options["pip_6_dps_color"])
			self.Attunement_4_child:SetBackColor(options["pip_6_dps_color"])
			self.Attunement_5_child:SetBackColor(options["pip_6_dps_color"])
			self.Attunement_6_child:SetBackColor(options["pip_6_dps_color"])
			self.Attunement_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_attunement == 5) then
			self.Attunement_label:SetText("5")
			self.Attunement_1_child:SetBackColor(options["pip_5_dps_color"])
			self.Attunement_2_child:SetBackColor(options["pip_5_dps_color"])
			self.Attunement_3_child:SetBackColor(options["pip_5_dps_color"])
			self.Attunement_4_child:SetBackColor(options["pip_5_dps_color"])
			self.Attunement_5_child:SetBackColor(options["pip_5_dps_color"])
			self.Attunement_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_attunement == 6) then
			self.Attunement_label:SetText("4")
			self.Attunement_1_child:SetBackColor(options["pip_4_dps_color"])
			self.Attunement_2_child:SetBackColor(options["pip_4_dps_color"])
			self.Attunement_3_child:SetBackColor(options["pip_4_dps_color"])
			self.Attunement_4_child:SetBackColor(options["pip_4_dps_color"])
			self.Attunement_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_attunement == 7) then
			self.Attunement_label:SetText("3")
			self.Attunement_1_child:SetBackColor(options["pip_3_dps_color"])
			self.Attunement_2_child:SetBackColor(options["pip_3_dps_color"])
			self.Attunement_3_child:SetBackColor(options["pip_3_dps_color"])
			self.Attunement_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_attunement == 8) then
			self.Attunement_label:SetText("2")
			self.Attunement_1_child:SetBackColor(options["pip_2_dps_color"])
			self.Attunement_2_child:SetBackColor(options["pip_2_dps_color"])
			self.Attunement_3_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_attunement == 9) then
			self.Attunement_label:SetText("1")
			self.Attunement_1_child:SetBackColor(options["pip_1_dps_color"])
			self.Attunement_2_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_3_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_attunement == 10) then
			self.Attunement_label:SetText("0")
			self.Attunement_1_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_2_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_3_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_attunement == 11) then
			self.Attunement_label:SetText("1")
			self.Attunement_1_child:SetBackColor(options["pip_1_heal_color"])
			self.Attunement_2_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_3_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_attunement == 12) then
			self.Attunement_label:SetText("2")
			self.Attunement_1_child:SetBackColor(options["pip_2_heal_color"])
			self.Attunement_2_child:SetBackColor(options["pip_2_heal_color"])
			self.Attunement_3_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_attunement == 13) then
			self.Attunement_label:SetText("3")
			self.Attunement_1_child:SetBackColor(options["pip_3_heal_color"])
			self.Attunement_2_child:SetBackColor(options["pip_3_heal_color"])
			self.Attunement_3_child:SetBackColor(options["pip_3_heal_color"])
			self.Attunement_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_attunement == 14) then
			self.Attunement_label:SetText("4")
			self.Attunement_1_child:SetBackColor(options["pip_4_heal_color"])
			self.Attunement_2_child:SetBackColor(options["pip_4_heal_color"])
			self.Attunement_3_child:SetBackColor(options["pip_4_heal_color"])
			self.Attunement_4_child:SetBackColor(options["pip_4_heal_color"])
			self.Attunement_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_attunement == 15) then
			self.Attunement_label:SetText("5")
			self.Attunement_1_child:SetBackColor(options["pip_5_heal_color"])
			self.Attunement_2_child:SetBackColor(options["pip_5_heal_color"])
			self.Attunement_3_child:SetBackColor(options["pip_5_heal_color"])
			self.Attunement_4_child:SetBackColor(options["pip_5_heal_color"])
			self.Attunement_5_child:SetBackColor(options["pip_5_heal_color"])
			self.Attunement_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_attunement == 16) then
			self.Attunement_label:SetText("6")
			self.Attunement_1_child:SetBackColor(options["pip_6_heal_color"])
			self.Attunement_2_child:SetBackColor(options["pip_6_heal_color"])
			self.Attunement_3_child:SetBackColor(options["pip_6_heal_color"])
			self.Attunement_4_child:SetBackColor(options["pip_6_heal_color"])
			self.Attunement_5_child:SetBackColor(options["pip_6_heal_color"])
			self.Attunement_6_child:SetBackColor(options["pip_6_heal_color"])
			self.Attunement_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_attunement == 17) then
			self.Attunement_label:SetText("7")
			self.Attunement_1_child:SetBackColor(options["pip_7_heal_color"])
			self.Attunement_2_child:SetBackColor(options["pip_7_heal_color"])
			self.Attunement_3_child:SetBackColor(options["pip_7_heal_color"])
			self.Attunement_4_child:SetBackColor(options["pip_7_heal_color"])
			self.Attunement_5_child:SetBackColor(options["pip_7_heal_color"])
			self.Attunement_6_child:SetBackColor(options["pip_7_heal_color"])
			self.Attunement_7_child:SetBackColor(options["pip_7_heal_color"])
			self.Attunement_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_attunement == 18) then
			self.Attunement_label:SetText("8")
			self.Attunement_1_child:SetBackColor(options["pip_8_heal_color"])
			self.Attunement_2_child:SetBackColor(options["pip_8_heal_color"])
			self.Attunement_3_child:SetBackColor(options["pip_8_heal_color"])
			self.Attunement_4_child:SetBackColor(options["pip_8_heal_color"])
			self.Attunement_5_child:SetBackColor(options["pip_8_heal_color"])
			self.Attunement_6_child:SetBackColor(options["pip_8_heal_color"])
			self.Attunement_7_child:SetBackColor(options["pip_8_heal_color"])
			self.Attunement_8_child:SetBackColor(options["pip_8_heal_color"])
			self.Attunement_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_attunement == 19) then
			self.Attunement_label:SetText("9")
			self.Attunement_1_child:SetBackColor(options["pip_9_heal_color"])
			self.Attunement_2_child:SetBackColor(options["pip_9_heal_color"])
			self.Attunement_3_child:SetBackColor(options["pip_9_heal_color"])
			self.Attunement_4_child:SetBackColor(options["pip_9_heal_color"])
			self.Attunement_5_child:SetBackColor(options["pip_9_heal_color"])
			self.Attunement_6_child:SetBackColor(options["pip_9_heal_color"])
			self.Attunement_7_child:SetBackColor(options["pip_9_heal_color"])
			self.Attunement_8_child:SetBackColor(options["pip_9_heal_color"])
			self.Attunement_9_child:SetBackColor(options["pip_9_heal_color"])
		else
			self.Attunement_1_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_2_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_3_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Attunement_9_child:SetBackColor(Turbine.UI.Color.Black)
		end
    end
	self.HunterAttunementDisplay.AttunementChanged();


    -- Window Movement --
	self.moveControl = Turbine.UI.Control()
	self.moveControl:SetParent(self)
	self.moveControl:SetWidth(self:GetWidth())
	self.moveControl:SetHeight(self:GetHeight())
	self.moveControl:SetMouseVisible(options["enableMovement"])
	self.moveControl:SetZOrder(3)
	self.moveControl.MouseDown = function( sender, args )
		if args.Button == Turbine.UI.MouseButton.Left then
			self.dragging = true	
			self.dragStartX = args.X
			self.dragStartY = args.Y
		end
	end
	
	self.moveControl.MouseMove = function( sender, args )
		if self.dragging then
			local x,y = self:GetPosition()	
			x = x + ( args.X - self.dragStartX )
			y = y + ( args.Y - self.dragStartY )	
			self:SetPosition( x, y )	
		end
	end
	
	self.moveControl.MouseUp = function( sender, args )
		if args.Button == Turbine.UI.MouseButton.Left then
			self.dragging = false
            options["xPos"] = self:GetLeft()
			options["yPos"] = self:GetTop()
		end
	end
end


-- Update elements after options have been modified --
function AttunementWindow:UpdateElements()

	self:SetSize(options["attunementBarLenght"] * 9 + options["attunementBarGap"] * 8, options["attunementBarHeight"] + 20)

    self.Attunement_label:SetSize(options["attunementBarHeight"] + 50, options["attunementBarHeight"] + 20)
	self.Attunement_label:SetPosition((self:GetWidth() / 2) - (self.Attunement_label:GetWidth() / 2), (self:GetHeight() / 2) - (self.Attunement_label:GetHeight() / 2))

	self.Attunement_1_parent:SetSize(options["attunementBarLenght"], options["attunementBarHeight"])
    self.Attunement_1_parent:SetPosition(0, (self:GetHeight() / 2) - (self.Attunement_1_parent:GetHeight() / 2))
	self.Attunement_1_child:SetSize(self.Attunement_1_parent:GetWidth() - 2, self.Attunement_1_parent:GetHeight() - 2)

	self.Attunement_2_parent:SetSize(options["attunementBarLenght"], options["attunementBarHeight"])
    self.Attunement_2_parent:SetPosition((options["attunementBarLenght"] + options["attunementBarGap"]), (self:GetHeight() / 2) - (self.Attunement_2_parent:GetHeight() / 2))
	self.Attunement_2_child:SetSize(self.Attunement_2_parent:GetWidth() - 2, self.Attunement_2_parent:GetHeight() - 2)

	self.Attunement_3_parent:SetSize(options["attunementBarLenght"], options["attunementBarHeight"])
    self.Attunement_3_parent:SetPosition((options["attunementBarLenght"] + options["attunementBarGap"]) * 2, (self:GetHeight() / 2) - (self.Attunement_3_parent:GetHeight() / 2))
	self.Attunement_3_child:SetSize(self.Attunement_3_parent:GetWidth() - 2, self.Attunement_3_parent:GetHeight() - 2)

	self.Attunement_4_parent:SetSize(options["attunementBarLenght"], options["attunementBarHeight"])
    self.Attunement_4_parent:SetPosition((options["attunementBarLenght"] + options["attunementBarGap"]) * 3, (self:GetHeight() / 2) - (self.Attunement_4_parent:GetHeight() / 2))
	self.Attunement_4_child:SetSize(self.Attunement_4_parent:GetWidth() - 2, self.Attunement_4_parent:GetHeight() - 2)

	self.Attunement_5_parent:SetSize(options["attunementBarLenght"], options["attunementBarHeight"])
    self.Attunement_5_parent:SetPosition((options["attunementBarLenght"] + options["attunementBarGap"]) * 4, (self:GetHeight() / 2) - (self.Attunement_5_parent:GetHeight() / 2))
	self.Attunement_5_child:SetSize(self.Attunement_5_parent:GetWidth() - 2, self.Attunement_5_parent:GetHeight() - 2)

	self.Attunement_6_parent:SetSize(options["attunementBarLenght"], options["attunementBarHeight"])
    self.Attunement_6_parent:SetPosition((options["attunementBarLenght"] + options["attunementBarGap"]) * 5, (self:GetHeight() / 2) - (self.Attunement_6_parent:GetHeight() / 2))
	self.Attunement_6_child:SetSize(self.Attunement_6_parent:GetWidth() - 2, self.Attunement_6_parent:GetHeight() - 2)

	self.Attunement_7_parent:SetSize(options["attunementBarLenght"], options["attunementBarHeight"])
    self.Attunement_7_parent:SetPosition((options["attunementBarLenght"] + options["attunementBarGap"]) * 6, (self:GetHeight() / 2) - (self.Attunement_7_parent:GetHeight() / 2))
	self.Attunement_7_child:SetSize(self.Attunement_7_parent:GetWidth() - 2, self.Attunement_7_parent:GetHeight() - 2)

	self.Attunement_8_parent:SetSize(options["attunementBarLenght"], options["attunementBarHeight"])
    self.Attunement_8_parent:SetPosition((options["attunementBarLenght"] + options["attunementBarGap"]) * 7, (self:GetHeight() / 2) - (self.Attunement_8_parent:GetHeight() / 2))
	self.Attunement_8_child:SetSize(self.Attunement_8_parent:GetWidth() - 2, self.Attunement_8_parent:GetHeight() - 2)

	self.Attunement_9_parent:SetSize(options["attunementBarLenght"], options["attunementBarHeight"])
    self.Attunement_9_parent:SetPosition((options["attunementBarLenght"] + options["attunementBarGap"]) * 8, (self:GetHeight() / 2) - (self.Attunement_9_parent:GetHeight() / 2))
	self.Attunement_9_child:SetSize(self.Attunement_9_parent:GetWidth() - 2, self.Attunement_9_parent:GetHeight() - 2)

	self.moveControl:SetWidth(self:GetWidth())
	self.moveControl:SetHeight(self:GetHeight())
end


AttunementWindowClass = AttunementWindow();