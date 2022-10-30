plugin.GetOptionsPanel = function(self)

	-- Create Options Panel --
	optionsPanel = Turbine.UI.Control();
	optionsPanel:SetSize(500, 1700);


	-- Options title --
	optionsPanelTitle = Turbine.UI.Label();
	optionsPanelTitle:SetParent(optionsPanel);
	optionsPanelTitle:SetText("Settings");
	optionsPanelTitle:SetSize(400, 30);
	optionsPanelTitle:SetPosition(0, 25);
	optionsPanelTitle:SetFont(Turbine.UI.Lotro.Font.TrajanPro18);
	optionsPanelTitle:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	optionsPanelTitle:SetForeColor(Turbine.UI.Color.Yellow);
	optionsPanelTitle:SetFontStyle(Turbine.UI.FontStyle.Outline);
	optionsPanelTitle:SetBlendMode(Turbine.UI.BlendMode.AlphaBlend);
	optionsPanelTitle:SetBackground(Turbine.UI.Graphic("RunekeeperAttunementDisplay/Images/optionsTitleBackground.tga"));


	-- Allow movement--
	option_allowMovement_label = Turbine.UI.Label();
	option_allowMovement_label:SetParent(optionsPanel);
	option_allowMovement_label:SetSize(300, 30);
	option_allowMovement_label:SetPosition(110, 70);
	option_allowMovement_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_allowMovement_label:SetText("Allow movement");
	option_allowMovement_label:SetForeColor(Turbine.UI.Color.White);
	option_allowMovement_checkbox = Turbine.UI.Lotro.CheckBox();
	option_allowMovement_checkbox:SetParent(optionsPanel);
	option_allowMovement_checkbox:SetSize(20, 20);
	option_allowMovement_checkbox:SetPosition(80, 69);
	option_allowMovement_checkbox:SetChecked(options["enableMovement"]);


	-- Display number --
	option_displayNumber_label = Turbine.UI.Label();
	option_displayNumber_label:SetParent(optionsPanel);
	option_displayNumber_label:SetSize(300, 30);
	option_displayNumber_label:SetPosition(110, 95);
	option_displayNumber_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_displayNumber_label:SetText("Display Number");
	option_displayNumber_label:SetForeColor(Turbine.UI.Color.White);
	option_displayNumber_checkbox = Turbine.UI.Lotro.CheckBox();
	option_displayNumber_checkbox:SetParent(optionsPanel);
	option_displayNumber_checkbox:SetSize(20, 20);
	option_displayNumber_checkbox:SetPosition(80, 94);
	option_displayNumber_checkbox:SetChecked(options["displayNumber"]);


	-- Hide out of combat --
	option_hideOutOfCombat_label = Turbine.UI.Label();
	option_hideOutOfCombat_label:SetParent(optionsPanel);
	option_hideOutOfCombat_label:SetSize(300, 30);
	option_hideOutOfCombat_label:SetPosition(110, 120);
	option_hideOutOfCombat_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_hideOutOfCombat_label:SetText("Hide when out of combat");
	option_hideOutOfCombat_label:SetForeColor(Turbine.UI.Color.White);
	option_hideOutOfCombat_checkbox = Turbine.UI.Lotro.CheckBox();
	option_hideOutOfCombat_checkbox:SetParent(optionsPanel);
	option_hideOutOfCombat_checkbox:SetSize(20, 20);
	option_hideOutOfCombat_checkbox:SetPosition(80, 119);
	option_hideOutOfCombat_checkbox:SetChecked(options["hideOutOfCombat"]);


	-- AttunementBarLenght --
	option_attunementBarLenght_label = Turbine.UI.Label();
	option_attunementBarLenght_label:SetParent(optionsPanel);
	option_attunementBarLenght_label:SetSize(300, 30);
	option_attunementBarLenght_label:SetPosition(80, 150);
	option_attunementBarLenght_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_attunementBarLenght_label:SetText("Bar Lenght");
	option_attunementBarLenght_label:SetForeColor(Turbine.UI.Color.White);
	option_attunementBarLenght_textbox = Turbine.UI.Lotro.TextBox();
	option_attunementBarLenght_textbox:SetParent(optionsPanel);
	option_attunementBarLenght_textbox:SetMultiline(false);
	option_attunementBarLenght_textbox:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_attunementBarLenght_textbox:SetText(options["attunementBarLenght"]);
	option_attunementBarLenght_textbox:SetSize(100, 20);
	option_attunementBarLenght_textbox:SetPosition(80, 170);
	option_attunementBarLenght_textbox:SetZOrder(100);
	option_attunementBarLenght_textbox.TextChanged = function (sender, args)
		-- Only allow numbers in textbox --
		option_attunementBarLenght_textbox:SetText(option_attunementBarLenght_textbox:GetText():gsub("[^0123456789]", ""));
	end


	-- AttunementBarHeight --
	option_attunementBarHeight_label = Turbine.UI.Label();
	option_attunementBarHeight_label:SetParent(optionsPanel);
	option_attunementBarHeight_label:SetSize(300, 30);
	option_attunementBarHeight_label:SetPosition(80, 200);
	option_attunementBarHeight_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_attunementBarHeight_label:SetText("Bar Height");
	option_attunementBarHeight_label:SetForeColor(Turbine.UI.Color.White);
	option_attunementBarHeight_textbox = Turbine.UI.Lotro.TextBox();
	option_attunementBarHeight_textbox:SetParent(optionsPanel);
	option_attunementBarHeight_textbox:SetMultiline(false);
	option_attunementBarHeight_textbox:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_attunementBarHeight_textbox:SetText(options["attunementBarHeight"]);
	option_attunementBarHeight_textbox:SetSize(100, 20);
	option_attunementBarHeight_textbox:SetPosition(80, 220);
	option_attunementBarHeight_textbox:SetZOrder(100);
	option_attunementBarHeight_textbox.TextChanged = function (sender, args)
		-- Only allow numbers in textbox --
		option_attunementBarHeight_textbox:SetText(option_attunementBarHeight_textbox:GetText():gsub("[^0123456789]", ""));
	end


	-- AttunementBarGap --
	option_attunementBarGap_label = Turbine.UI.Label();
	option_attunementBarGap_label:SetParent(optionsPanel);
	option_attunementBarGap_label:SetSize(300, 30);
	option_attunementBarGap_label:SetPosition(80, 250);
	option_attunementBarGap_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_attunementBarGap_label:SetText("Bar Gap");
	option_attunementBarGap_label:SetForeColor(Turbine.UI.Color.White);
	option_attunementBarGap_textbox = Turbine.UI.Lotro.TextBox();
	option_attunementBarGap_textbox:SetParent(optionsPanel);
	option_attunementBarGap_textbox:SetMultiline(false);
	option_attunementBarGap_textbox:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_attunementBarGap_textbox:SetText(options["attunementBarGap"]);
	option_attunementBarGap_textbox:SetSize(100, 20);
	option_attunementBarGap_textbox:SetPosition(80, 270);
	option_attunementBarGap_textbox:SetZOrder(100);
	option_attunementBarGap_textbox.TextChanged = function (sender, args)
		-- Only allow numbers in textbox --
		option_attunementBarGap_textbox:SetText(option_attunementBarGap_textbox:GetText():gsub("[^0123456789]", ""));
	end


	-- DPS colors customization --
	dpsCustomizationTitle = Turbine.UI.Label();
	dpsCustomizationTitle:SetParent(optionsPanel);
	dpsCustomizationTitle:SetText("DPS colors");
	dpsCustomizationTitle:SetSize(400, 30);
	dpsCustomizationTitle:SetPosition(0, 320);
	dpsCustomizationTitle:SetFont(Turbine.UI.Lotro.Font.TrajanPro18);
	dpsCustomizationTitle:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	dpsCustomizationTitle:SetForeColor(Turbine.UI.Color.Yellow);
	dpsCustomizationTitle:SetFontStyle(Turbine.UI.FontStyle.Outline);
	dpsCustomizationTitle:SetBlendMode(Turbine.UI.BlendMode.AlphaBlend);
	dpsCustomizationTitle:SetBackground(Turbine.UI.Graphic("RunekeeperAttunementDisplay/Images/optionsTitleBackground.tga"));

	dps_color_customization1 = createCustomizationOption(optionsPanel, 80, 380, "pip 1 color", "pip_1_dps_color");
	dps_color_customization2 = createCustomizationOption(optionsPanel, 80, 440, "pip 2 color", "pip_2_dps_color");
	dps_color_customization3 = createCustomizationOption(optionsPanel, 80, 500, "pip 3 color", "pip_3_dps_color");
	dps_color_customization4 = createCustomizationOption(optionsPanel, 80, 560, "pip 4 color", "pip_4_dps_color");
	dps_color_customization5 = createCustomizationOption(optionsPanel, 80, 620, "pip 5 color", "pip_5_dps_color");
	dps_color_customization6 = createCustomizationOption(optionsPanel, 80, 680, "pip 6 color", "pip_6_dps_color");
	dps_color_customization7 = createCustomizationOption(optionsPanel, 80, 740, "pip 7 color", "pip_7_dps_color");
	dps_color_customization8 = createCustomizationOption(optionsPanel, 80, 800, "pip 8 color", "pip_8_dps_color");
	dps_color_customization9 = createCustomizationOption(optionsPanel, 80, 860, "pip 9 color", "pip_9_dps_color");


	-- Healing colors customization --
	healCustomizationTitle = Turbine.UI.Label();
	healCustomizationTitle:SetParent(optionsPanel);
	healCustomizationTitle:SetText("Healing colors");
	healCustomizationTitle:SetSize(400, 30);
	healCustomizationTitle:SetPosition(0, 950);
	healCustomizationTitle:SetFont(Turbine.UI.Lotro.Font.TrajanPro18);
	healCustomizationTitle:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	healCustomizationTitle:SetForeColor(Turbine.UI.Color.Yellow);
	healCustomizationTitle:SetFontStyle(Turbine.UI.FontStyle.Outline);
	healCustomizationTitle:SetBlendMode(Turbine.UI.BlendMode.AlphaBlend);
	healCustomizationTitle:SetBackground(Turbine.UI.Graphic("RunekeeperAttunementDisplay/Images/optionsTitleBackground.tga"));

	heal_color_customization1 = createCustomizationOption(optionsPanel, 80, 1010, "pip 1 color", "pip_1_heal_color");
	heal_color_customization2 = createCustomizationOption(optionsPanel, 80, 1070, "pip 2 color", "pip_2_heal_color");
	heal_color_customization3 = createCustomizationOption(optionsPanel, 80, 1130, "pip 3 color", "pip_3_heal_color");
	heal_color_customization4 = createCustomizationOption(optionsPanel, 80, 1190, "pip 4 color", "pip_4_heal_color");
	heal_color_customization5 = createCustomizationOption(optionsPanel, 80, 1250, "pip 5 color", "pip_5_heal_color");
	heal_color_customization6 = createCustomizationOption(optionsPanel, 80, 1310, "pip 6 color", "pip_6_heal_color");
	heal_color_customization7 = createCustomizationOption(optionsPanel, 80, 1370, "pip 7 color", "pip_7_heal_color");
	heal_color_customization8 = createCustomizationOption(optionsPanel, 80, 1430, "pip 8 color", "pip_8_heal_color");
	heal_color_customization9 = createCustomizationOption(optionsPanel, 80, 1490, "pip 9 color", "pip_9_heal_color");


	-- Troubleshooting title --
	optionsPanelTitle = Turbine.UI.Label();
	optionsPanelTitle:SetParent(optionsPanel);
	optionsPanelTitle:SetText("Troubleshooting");
	optionsPanelTitle:SetSize(400, 30);
	optionsPanelTitle:SetPosition(300, 25);
	optionsPanelTitle:SetFont(Turbine.UI.Lotro.Font.TrajanPro18);
	optionsPanelTitle:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	optionsPanelTitle:SetForeColor(Turbine.UI.Color.Yellow);
	optionsPanelTitle:SetFontStyle(Turbine.UI.FontStyle.Outline);
	optionsPanelTitle:SetBlendMode(Turbine.UI.BlendMode.AlphaBlend);
	optionsPanelTitle:SetBackground(Turbine.UI.Graphic("RunekeeperAttunementDisplay/Images/optionsTitleBackground.tga"));


	-- Reset position button --
	resetPositionButton = Turbine.UI.Lotro.Button();
	resetPositionButton:SetText("Reset Position");
	resetPositionButton:SetParent(optionsPanel);
	resetPositionButton:SetSize(150, 20);
	resetPositionButton:SetPosition(428, 80);
	resetPositionButton:SetZOrder(100);
	resetPositionButton.Click = function( sender, args)
		options["xPos"] = defaultOptions["xPos"];
		options["yPos"] = defaultOptions["yPos"];
		AttunementWindowClass:SetPosition(defaultOptions["xPos"], defaultOptions["yPos"])
		notification("Position has been resetted.");
	end


	-- Reset settings button --
	resetPositionButton = Turbine.UI.Lotro.Button();
	resetPositionButton:SetText("Reset All Settings");
	resetPositionButton:SetParent(optionsPanel);
	resetPositionButton:SetSize(150, 20);
	resetPositionButton:SetPosition(428, 120);
	resetPositionButton:SetZOrder(100);
	resetPositionButton.Click = function( sender, args)
		options["xPos"] = defaultOptions["xPos"];
		options["yPos"] = defaultOptions["yPos"];
		options["enableMovement"] = defaultOptions["enableMovement"];
		options["displayNumber"] = defaultOptions["displayNumber"];
		options["attunementBarLenght"] = defaultOptions["attunementBarLenght"];
		options["attunementBarHeight"] = defaultOptions["attunementBarHeight"];
		options["attunementBarGap"] = defaultOptions["attunementBarGap"];
		options["hideOutOfCombat"] = defaultOptions["hideOutOfCombat"];

		AttunementWindowClass:SetPosition(defaultOptions["xPos"], defaultOptions["yPos"])
		option_allowMovement_checkbox:SetChecked(defaultOptions["enableMovement"])
		AttunementWindowClass.moveControl:SetMouseVisible(defaultOptions["enableMovement"])
		option_hideOutOfCombat_checkbox:SetChecked(defaultOptions["hideOutOfCombat"]);
		AttunementWindowClass:SetOpacity(1)
		AttunementWindowClass:SetWantsUpdates(defaultOptions["hideOutOfCombat"])
		option_displayNumber_checkbox:SetChecked(defaultOptions["displayNumber"]);
		AttunementWindowClass.Attunement_label:SetVisible(defaultOptions["displayNumber"])
		option_attunementBarLenght_textbox:SetText(defaultOptions["attunementBarLenght"])
		option_attunementBarHeight_textbox:SetText(defaultOptions["attunementBarHeight"])
		option_attunementBarGap_textbox:SetText(defaultOptions["attunementBarGap"])

		AttunementWindowClass:UpdateElements();
		notification("All Settings has been resetted.");
	end


	-- Apply options button --
	apllyButton = Turbine.UI.Lotro.Button();
	apllyButton:SetText("Apply");
	apllyButton:SetParent(optionsPanel);
	apllyButton:SetSize(150, 20);
	apllyButton:SetPosition(80, 1600);
	apllyButton:SetZOrder(100);
	apllyButton.Click = function( sender, args)

		options["enableMovement"] = option_allowMovement_checkbox:IsChecked();
		AttunementWindowClass.moveControl:SetMouseVisible(options["enableMovement"])

		options["hideOutOfCombat"] = option_hideOutOfCombat_checkbox:IsChecked();
		if (options["hideOutOfCombat"]) then
			AttunementWindowClass.localPlayer.InCombatChanged();
		else
			AttunementWindowClass:SetWantsUpdates(false)
			AttunementWindowClass:SetOpacity(1)
		end

		options["displayNumber"] = option_displayNumber_checkbox:IsChecked();
		AttunementWindowClass.Attunement_label:SetVisible(options["displayNumber"])

		if (option_attunementBarLenght_textbox:GetText() == "") then
			option_attunementBarLenght_textbox:SetText("0")
		end

		if (option_attunementBarHeight_textbox:GetText() == "") then
			option_attunementBarHeight_textbox:SetText("0")
		end

		if (option_attunementBarGap_textbox:GetText() == "") then
			option_attunementBarGap_textbox:SetText("0")
		end

		options["attunementBarLenght"] = option_attunementBarLenght_textbox:GetText();
		options["attunementBarHeight"] = option_attunementBarHeight_textbox:GetText();
		options["attunementBarGap"] = option_attunementBarGap_textbox:GetText();

		options["pip_1_dps_color"] = dps_color_customization1["colorReview"]:GetBackColor();
		options["pip_2_dps_color"] = dps_color_customization2["colorReview"]:GetBackColor();
		options["pip_3_dps_color"] = dps_color_customization3["colorReview"]:GetBackColor();
		options["pip_4_dps_color"] = dps_color_customization4["colorReview"]:GetBackColor();
		options["pip_5_dps_color"] = dps_color_customization5["colorReview"]:GetBackColor();
		options["pip_6_dps_color"] = dps_color_customization6["colorReview"]:GetBackColor();
		options["pip_7_dps_color"] = dps_color_customization7["colorReview"]:GetBackColor();
		options["pip_8_dps_color"] = dps_color_customization8["colorReview"]:GetBackColor();
		options["pip_9_dps_color"] = dps_color_customization9["colorReview"]:GetBackColor();

		options["pip_1_heal_color"] = heal_color_customization1["colorReview"]:GetBackColor();
		options["pip_2_heal_color"] = heal_color_customization2["colorReview"]:GetBackColor();
		options["pip_3_heal_color"] = heal_color_customization3["colorReview"]:GetBackColor();
		options["pip_4_heal_color"] = heal_color_customization4["colorReview"]:GetBackColor();
		options["pip_5_heal_color"] = heal_color_customization5["colorReview"]:GetBackColor();
		options["pip_6_heal_color"] = heal_color_customization6["colorReview"]:GetBackColor();
		options["pip_7_heal_color"] = heal_color_customization7["colorReview"]:GetBackColor();
		options["pip_8_heal_color"] = heal_color_customization8["colorReview"]:GetBackColor();
		options["pip_9_heal_color"] = heal_color_customization9["colorReview"]:GetBackColor();

		AttunementWindowClass:UpdateElements();
		notification("Options have been applied.");
	end


	-- Return View --
	return optionsPanel;
end





-- Build layout for customization options --
function createCustomizationOption(parent, xPos, yPos, text, keyValue)

	local label = Turbine.UI.Label();
	label:SetParent(parent);
	label:SetFont(Turbine.UI.Lotro.Font.TrajanPro15);
	label:SetText(text);
	label:SetSize(240, 30);
	label:SetPosition(xPos, yPos);


	local colorReview = Turbine.UI.Control()
	colorReview:SetParent(parent)
	colorReview:SetSize(80, 20)
    colorReview:SetPosition(xPos, yPos + 20)
	colorReview:SetBackColor(options[keyValue])
    colorReview:SetVisible(true)


	local editButton = Turbine.UI.Lotro.Button();
	editButton:SetText("Edit");
	editButton:SetParent(parent);
	editButton:SetSize(75, 30);
	editButton:SetPosition(xPos + 100, yPos + 20);
	editButton.Click = function( sender, args)
		if colorPicker ~= nil then
			colorPickerLastPositionX, colorPickerLastPositionY = colorPicker:GetPosition();
			colorPicker:Close();
		end

		colorPicker = RunekeeperAttunementDisplay.Utility.ColorPicker(colorReview:GetBackColor(), "H");
		colorPicker:SetZOrder(9999);

		if (colorPickerLastPositionX ~= nil) then
			colorPicker:SetPosition(colorPickerLastPositionX, colorPickerLastPositionY);
		end

		colorPicker.ColorChanged = function(picker)
			colorReview:SetBackColor(picker:GetColor());
		end

		colorPicker.Accepted = function(picker)
			colorReview:SetBackColor(picker:GetColor());
			colorPicker:Close();
		end
	end


	local revertButton = Turbine.UI.Lotro.Button();
	revertButton:SetText("Revert");
	revertButton:SetParent(parent);
	revertButton:SetSize(75, 30);
	revertButton:SetPosition(xPos + 180, yPos + 20);
	revertButton.Click = function( sender, args)
		-- Revert color back to what it was when plugin was loaded --
		colorReview:SetBackColor(options[keyValue]);
	end


	local defaultButton = Turbine.UI.Lotro.Button();
	defaultButton:SetText("Default");
	defaultButton:SetParent(parent);
	defaultButton:SetSize(75, 30);
	defaultButton:SetPosition(xPos + 260, yPos + 20);
	defaultButton.Click = function( sender, args)
		-- Reset color to default settings --
		colorReview:SetBackColor(defaultOptions[keyValue]);
	end


	-- Return created objects --
	data = {}
	data["label"] = label;
	data["colorReview"] = colorReview;
	data["editButton"] = editButton;
	data["revertButton"] = revertButton;
	data["defaultButton"] = defaultButton;
	return data;
end