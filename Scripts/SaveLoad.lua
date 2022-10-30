-- Save options --
function saveOptions()

    -- Fixes issue where french client was adding invalid data to array
    for key,value in pairs(options) do
        if (key ~= "xPos"
        and key ~= "yPos"
        and key ~= "attunementBarHeight"
        and key ~= "attunementBarGap"
        and key ~= "attunementBarLenght"
        and key ~= "enableMovement"
        and key ~= "hideOutOfCombat"
        and key ~= "displayNumber"
        and key ~= "pip_1_dps_color"
        and key ~= "pip_2_dps_color"
        and key ~= "pip_3_dps_color"
        and key ~= "pip_4_dps_color"
        and key ~= "pip_5_dps_color"
        and key ~= "pip_6_dps_color"
        and key ~= "pip_7_dps_color"
        and key ~= "pip_8_dps_color"
        and key ~= "pip_9_dps_color"
        and key ~= "pip_1_heal_color"
        and key ~= "pip_2_heal_color"
        and key ~= "pip_3_heal_color"
        and key ~= "pip_4_heal_color"
        and key ~= "pip_5_heal_color"
        and key ~= "pip_6_heal_color"
        and key ~= "pip_7_heal_color"
        and key ~= "pip_8_heal_color"
        and key ~= "pip_9_heal_color") then
            options[key] = nil;
        end
    end

    options["pip_1_dps_color"]["R"] = numberToStringMinMax(options["pip_1_dps_color"]["R"], 0, 1);
    options["pip_1_dps_color"]["G"] = numberToStringMinMax(options["pip_1_dps_color"]["G"], 0, 1);
    options["pip_1_dps_color"]["B"] = numberToStringMinMax(options["pip_1_dps_color"]["B"], 0, 1);
    options["pip_2_dps_color"]["R"] = numberToStringMinMax(options["pip_2_dps_color"]["R"], 0, 1);
    options["pip_2_dps_color"]["G"] = numberToStringMinMax(options["pip_2_dps_color"]["G"], 0, 1);
    options["pip_2_dps_color"]["B"] = numberToStringMinMax(options["pip_2_dps_color"]["B"], 0, 1);
    options["pip_3_dps_color"]["R"] = numberToStringMinMax(options["pip_3_dps_color"]["R"], 0, 1);
    options["pip_3_dps_color"]["G"] = numberToStringMinMax(options["pip_3_dps_color"]["G"], 0, 1);
    options["pip_3_dps_color"]["B"] = numberToStringMinMax(options["pip_3_dps_color"]["B"], 0, 1);
    options["pip_4_dps_color"]["R"] = numberToStringMinMax(options["pip_4_dps_color"]["R"], 0, 1);
    options["pip_4_dps_color"]["G"] = numberToStringMinMax(options["pip_4_dps_color"]["G"], 0, 1);
    options["pip_4_dps_color"]["B"] = numberToStringMinMax(options["pip_4_dps_color"]["B"], 0, 1);
    options["pip_5_dps_color"]["R"] = numberToStringMinMax(options["pip_5_dps_color"]["R"], 0, 1);
    options["pip_5_dps_color"]["G"] = numberToStringMinMax(options["pip_5_dps_color"]["G"], 0, 1);
    options["pip_5_dps_color"]["B"] = numberToStringMinMax(options["pip_5_dps_color"]["B"], 0, 1);
    options["pip_6_dps_color"]["R"] = numberToStringMinMax(options["pip_6_dps_color"]["R"], 0, 1);
    options["pip_6_dps_color"]["G"] = numberToStringMinMax(options["pip_6_dps_color"]["G"], 0, 1);
    options["pip_6_dps_color"]["B"] = numberToStringMinMax(options["pip_6_dps_color"]["B"], 0, 1);
    options["pip_7_dps_color"]["R"] = numberToStringMinMax(options["pip_7_dps_color"]["R"], 0, 1);
    options["pip_7_dps_color"]["G"] = numberToStringMinMax(options["pip_7_dps_color"]["G"], 0, 1);
    options["pip_7_dps_color"]["B"] = numberToStringMinMax(options["pip_7_dps_color"]["B"], 0, 1);
    options["pip_8_dps_color"]["R"] = numberToStringMinMax(options["pip_8_dps_color"]["R"], 0, 1);
    options["pip_8_dps_color"]["G"] = numberToStringMinMax(options["pip_8_dps_color"]["G"], 0, 1);
    options["pip_8_dps_color"]["B"] = numberToStringMinMax(options["pip_8_dps_color"]["B"], 0, 1);
    options["pip_9_dps_color"]["R"] = numberToStringMinMax(options["pip_9_dps_color"]["R"], 0, 1);
    options["pip_9_dps_color"]["G"] = numberToStringMinMax(options["pip_9_dps_color"]["G"], 0, 1);
    options["pip_9_dps_color"]["B"] = numberToStringMinMax(options["pip_9_dps_color"]["B"], 0, 1);
    options["pip_1_heal_color"]["R"] = numberToStringMinMax(options["pip_1_heal_color"]["R"], 0, 1);
    options["pip_1_heal_color"]["G"] = numberToStringMinMax(options["pip_1_heal_color"]["G"], 0, 1);
    options["pip_1_heal_color"]["B"] = numberToStringMinMax(options["pip_1_heal_color"]["B"], 0, 1);
    options["pip_2_heal_color"]["R"] = numberToStringMinMax(options["pip_2_heal_color"]["R"], 0, 1);
    options["pip_2_heal_color"]["G"] = numberToStringMinMax(options["pip_2_heal_color"]["G"], 0, 1);
    options["pip_2_heal_color"]["B"] = numberToStringMinMax(options["pip_2_heal_color"]["B"], 0, 1);
    options["pip_3_heal_color"]["R"] = numberToStringMinMax(options["pip_3_heal_color"]["R"], 0, 1);
    options["pip_3_heal_color"]["G"] = numberToStringMinMax(options["pip_3_heal_color"]["G"], 0, 1);
    options["pip_3_heal_color"]["B"] = numberToStringMinMax(options["pip_3_heal_color"]["B"], 0, 1);
    options["pip_4_heal_color"]["R"] = numberToStringMinMax(options["pip_4_heal_color"]["R"], 0, 1);
    options["pip_4_heal_color"]["G"] = numberToStringMinMax(options["pip_4_heal_color"]["G"], 0, 1);
    options["pip_4_heal_color"]["B"] = numberToStringMinMax(options["pip_4_heal_color"]["B"], 0, 1);
    options["pip_5_heal_color"]["R"] = numberToStringMinMax(options["pip_5_heal_color"]["R"], 0, 1);
    options["pip_5_heal_color"]["G"] = numberToStringMinMax(options["pip_5_heal_color"]["G"], 0, 1);
    options["pip_5_heal_color"]["B"] = numberToStringMinMax(options["pip_5_heal_color"]["B"], 0, 1);
    options["pip_6_heal_color"]["R"] = numberToStringMinMax(options["pip_6_heal_color"]["R"], 0, 1);
    options["pip_6_heal_color"]["G"] = numberToStringMinMax(options["pip_6_heal_color"]["G"], 0, 1);
    options["pip_6_heal_color"]["B"] = numberToStringMinMax(options["pip_6_heal_color"]["B"], 0, 1);
    options["pip_7_heal_color"]["R"] = numberToStringMinMax(options["pip_7_heal_color"]["R"], 0, 1);
    options["pip_7_heal_color"]["G"] = numberToStringMinMax(options["pip_7_heal_color"]["G"], 0, 1);
    options["pip_7_heal_color"]["B"] = numberToStringMinMax(options["pip_7_heal_color"]["B"], 0, 1);
    options["pip_8_heal_color"]["R"] = numberToStringMinMax(options["pip_8_heal_color"]["R"], 0, 1);
    options["pip_8_heal_color"]["G"] = numberToStringMinMax(options["pip_8_heal_color"]["G"], 0, 1);
    options["pip_8_heal_color"]["B"] = numberToStringMinMax(options["pip_8_heal_color"]["B"], 0, 1);
    options["pip_9_heal_color"]["R"] = numberToStringMinMax(options["pip_9_heal_color"]["R"], 0, 1);
    options["pip_9_heal_color"]["G"] = numberToStringMinMax(options["pip_9_heal_color"]["G"], 0, 1);
    options["pip_9_heal_color"]["B"] = numberToStringMinMax(options["pip_9_heal_color"]["B"], 0, 1);

    Turbine.PluginData.Save(Turbine.DataScope.Character, settingsFileName, options);
end


-- Turns strings to numbers between min and max value --
function numberToStringMinMax(value, min, max)
	if value == nil then return tostring(min); end
	if value < min then return tostring(min); end
	if value > max then return tostring(max); end
	return tostring(value):gsub(",", ".");
end



-- Load options --
function loadOptions()
    local _options = Turbine.PluginData.Load(Turbine.DataScope.Character, settingsFileName);
    if _options ~= nil then

        if (_options["xPos"] == nil) then
            _options["xPos"] = options["xPos"];
        end

        if (_options["yPos"] == nil) then
            _options["yPos"] = options["yPos"];
        end

        if (_options["enableMovement"] == nil) then
            _options["enableMovement"] = options["enableMovement"];
        end

        if (_options["attunementBarHeight"] == nil) then
            _options["attunementBarHeight"] = options["attunementBarHeight"];
        end

        if (_options["attunementBarGap"] == nil) then
            _options["attunementBarGap"] = options["attunementBarGap"];
        end

        if (_options["attunementBarLenght"] == nil) then
            _options["attunementBarLenght"] = options["attunementBarLenght"];
        end

        if (_options["hideOutOfCombat"] == nil) then
            _options["hideOutOfCombat"] = options["hideOutOfCombat"];
        end

        if (_options["displayNumber"] == nil) then
            _options["displayNumber"] = options["displayNumber"];
        end

        if (_options["pip_1_dps_color"] == nil) then
            _options["pip_1_dps_color"] = options["pip_1_dps_color"];
        end

        if (_options["pip_2_dps_color"] == nil) then
            _options["pip_2_dps_color"] = options["pip_2_dps_color"];
        end

        if (_options["pip_3_dps_color"] == nil) then
            _options["pip_3_dps_color"] = options["pip_3_dps_color"];
        end

        if (_options["pip_4_dps_color"] == nil) then
            _options["pip_4_dps_color"] = options["pip_4_dps_color"];
        end

        if (_options["pip_5_dps_color"] == nil) then
            _options["pip_5_dps_color"] = options["pip_5_dps_color"];
        end

        if (_options["pip_6_dps_color"] == nil) then
            _options["pip_6_dps_color"] = options["pip_6_dps_color"];
        end

        if (_options["pip_7_dps_color"] == nil) then
            _options["pip_7_dps_color"] = options["pip_7_dps_color"];
        end

        if (_options["pip_8_dps_color"] == nil) then
            _options["pip_8_dps_color"] = options["pip_8_dps_color"];
        end

        if (_options["pip_9_dps_color"] == nil) then
            _options["pip_9_dps_color"] = options["pip_9_dps_color"];
        end

        if (_options["pip_1_heal_color"] == nil) then
            _options["pip_1_heal_color"] = options["pip_1_heal_color"];
        end

        if (_options["pip_2_heal_color"] == nil) then
            _options["pip_2_heal_color"] = options["pip_2_heal_color"];
        end

        if (_options["pip_3_heal_color"] == nil) then
            _options["pip_3_heal_color"] = options["pip_3_heal_color"];
        end

        if (_options["pip_4_heal_color"] == nil) then
            _options["pip_4_heal_color"] = options["pip_4_heal_color"];
        end

        if (_options["pip_5_heal_color"] == nil) then
            _options["pip_5_heal_color"] = options["pip_5_heal_color"];
        end

        if (_options["pip_6_heal_color"] == nil) then
            _options["pip_6_heal_color"] = options["pip_6_heal_color"];
        end

        if (_options["pip_7_heal_color"] == nil) then
            _options["pip_7_heal_color"] = options["pip_7_heal_color"];
        end

        if (_options["pip_8_heal_color"] == nil) then
            _options["pip_8_heal_color"] = options["pip_8_heal_color"];
        end

        if (_options["pip_9_heal_color"] == nil) then
            _options["pip_9_heal_color"] = options["pip_9_heal_color"];
        end

        options = _options;

        options["pip_1_dps_color"] = toColor(options["pip_1_dps_color"]["R"], options["pip_1_dps_color"]["G"], options["pip_1_dps_color"]["B"])
        options["pip_2_dps_color"] = toColor(options["pip_2_dps_color"]["R"], options["pip_2_dps_color"]["G"], options["pip_2_dps_color"]["B"])
        options["pip_3_dps_color"] = toColor(options["pip_3_dps_color"]["R"], options["pip_3_dps_color"]["G"], options["pip_3_dps_color"]["B"])
        options["pip_4_dps_color"] = toColor(options["pip_4_dps_color"]["R"], options["pip_4_dps_color"]["G"], options["pip_4_dps_color"]["B"])
        options["pip_5_dps_color"] = toColor(options["pip_5_dps_color"]["R"], options["pip_5_dps_color"]["G"], options["pip_5_dps_color"]["B"])
        options["pip_6_dps_color"] = toColor(options["pip_6_dps_color"]["R"], options["pip_6_dps_color"]["G"], options["pip_6_dps_color"]["B"])
        options["pip_7_dps_color"] = toColor(options["pip_7_dps_color"]["R"], options["pip_7_dps_color"]["G"], options["pip_7_dps_color"]["B"])
        options["pip_8_dps_color"] = toColor(options["pip_8_dps_color"]["R"], options["pip_8_dps_color"]["G"], options["pip_8_dps_color"]["B"])
        options["pip_9_dps_color"] = toColor(options["pip_9_dps_color"]["R"], options["pip_9_dps_color"]["G"], options["pip_9_dps_color"]["B"])
        options["pip_1_heal_color"] = toColor(options["pip_1_heal_color"]["R"], options["pip_1_heal_color"]["G"], options["pip_1_heal_color"]["B"])
        options["pip_2_heal_color"] = toColor(options["pip_2_heal_color"]["R"], options["pip_2_heal_color"]["G"], options["pip_2_heal_color"]["B"])
        options["pip_3_heal_color"] = toColor(options["pip_3_heal_color"]["R"], options["pip_3_heal_color"]["G"], options["pip_3_heal_color"]["B"])
        options["pip_4_heal_color"] = toColor(options["pip_4_heal_color"]["R"], options["pip_4_heal_color"]["G"], options["pip_4_heal_color"]["B"])
        options["pip_5_heal_color"] = toColor(options["pip_5_heal_color"]["R"], options["pip_5_heal_color"]["G"], options["pip_5_heal_color"]["B"])
        options["pip_6_heal_color"] = toColor(options["pip_6_heal_color"]["R"], options["pip_6_heal_color"]["G"], options["pip_6_heal_color"]["B"])
        options["pip_7_heal_color"] = toColor(options["pip_7_heal_color"]["R"], options["pip_7_heal_color"]["G"], options["pip_7_heal_color"]["B"])
        options["pip_8_heal_color"] = toColor(options["pip_8_heal_color"]["R"], options["pip_8_heal_color"]["G"], options["pip_8_heal_color"]["B"])
        options["pip_9_heal_color"] = toColor(options["pip_9_heal_color"]["R"], options["pip_9_heal_color"]["G"], options["pip_9_heal_color"]["B"])
    end
end


-- Turns RGB values to turbine color objects --
function toColor(r, g, b)

	if (tonumber(r) == nil) or (tonumber(g) == nil) or (tonumber(b) == nil) then
		-- Try to fix numbers by chaning "." to "," --
		r = r:gsub("%.", ",");
		g = g:gsub("%.", ",");
		b = b:gsub("%.", ",");
	end

	return Turbine.UI.Color(tonumber(r), tonumber(g), tonumber(b));
end