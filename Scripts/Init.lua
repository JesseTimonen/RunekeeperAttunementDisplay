-- Plugin's name --
pluginName = "RunekeeperAttunementDisplay";

-- File names --
settingsFileName = "RunekeeperAttunementDisplay_Settings";

-- Users screen size --
screenWidth, screenHeight = Turbine.UI.Display:GetSize();

-- Default options --
defaultOptions = {
    xPos = screenWidth / 2,
    yPos = screenHeight / 2,
    enableMovement = true,
    displayNumber = true,
    attunementBarLenght = 30,
    attunementBarHeight = 10,
    attunementBarGap = 3,
    hideOutOfCombat = false,
    pip_1_dps_color = Turbine.UI.Color(0.996, 0.533, 0),
    pip_2_dps_color = Turbine.UI.Color(0.996, 0.533, 0),
    pip_3_dps_color = Turbine.UI.Color(0.996, 0.533, 0),
    pip_4_dps_color = Turbine.UI.Color(1, 0.333, 0.012),
    pip_5_dps_color = Turbine.UI.Color(1, 0.333, 0.012),
    pip_6_dps_color = Turbine.UI.Color(1, 0.333, 0.012),
    pip_7_dps_color = Turbine.UI.Color(0.808, 0.039, 0.094),
    pip_8_dps_color = Turbine.UI.Color(0.808, 0.039, 0.094),
    pip_9_dps_color = Turbine.UI.Color(0.808, 0.039, 0.094),
    pip_1_heal_color = Turbine.UI.Color(0, 0.61, 0),
    pip_2_heal_color = Turbine.UI.Color(0, 0.61, 0),
    pip_3_heal_color = Turbine.UI.Color(0, 0.61, 0),
    pip_4_heal_color = Turbine.UI.Color(0, 0.58, 0),
    pip_5_heal_color = Turbine.UI.Color(0, 0.58, 0),
    pip_6_heal_color = Turbine.UI.Color(0, 0.58, 0),
    pip_7_heal_color = Turbine.UI.Color(0, 0.55, 0),
    pip_8_heal_color = Turbine.UI.Color(0, 0.55, 0),
    pip_9_heal_color = Turbine.UI.Color(0, 0.55, 0)
}

options = {
    xPos = screenWidth / 2,
    yPos = screenHeight / 2,
    enableMovement = true,
    displayNumber = true,
    attunementBarLenght = 30,
    attunementBarHeight = 10,
    attunementBarGap = 3,
    hideOutOfCombat = false,
    pip_1_dps_color = Turbine.UI.Color(0.996, 0.533, 0),
    pip_2_dps_color = Turbine.UI.Color(0.996, 0.533, 0),
    pip_3_dps_color = Turbine.UI.Color(0.996, 0.533, 0),
    pip_4_dps_color = Turbine.UI.Color(1, 0.333, 0.012),
    pip_5_dps_color = Turbine.UI.Color(1, 0.333, 0.012),
    pip_6_dps_color = Turbine.UI.Color(1, 0.333, 0.012),
    pip_7_dps_color = Turbine.UI.Color(0.808, 0.039, 0.094),
    pip_8_dps_color = Turbine.UI.Color(0.808, 0.039, 0.094),
    pip_9_dps_color = Turbine.UI.Color(0.808, 0.039, 0.094),
    pip_1_heal_color = Turbine.UI.Color(0, 0.61, 0),
    pip_2_heal_color = Turbine.UI.Color(0, 0.61, 0),
    pip_3_heal_color = Turbine.UI.Color(0, 0.61, 0),
    pip_4_heal_color = Turbine.UI.Color(0, 0.58, 0),
    pip_5_heal_color = Turbine.UI.Color(0, 0.58, 0),
    pip_6_heal_color = Turbine.UI.Color(0, 0.58, 0),
    pip_7_heal_color = Turbine.UI.Color(0, 0.55, 0),
    pip_8_heal_color = Turbine.UI.Color(0, 0.55, 0),
    pip_9_heal_color = Turbine.UI.Color(0, 0.55, 0)
}

-- Color Picker position --
colorPickerLastPositionX = nil;
colorPickerLastPositionY = nil;

-- RGB color codes --
rgb = {
    pluginName = "<rgb=#DAA520>",
    error = "<rgb=#FF0000>",
    clear = "</rgb>",
};