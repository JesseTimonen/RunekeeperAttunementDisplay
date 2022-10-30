-- Import Turbine/Lotro base libraries --
import "Turbine";
import "Turbine.Gameplay";
import "Turbine.UI.Lotro";


-- Import utility scripts --
import "RunekeeperAttunementDisplay.Scripts.Utility.Class";
import "RunekeeperAttunementDisplay.Scripts.Utility.Type";
import "RunekeeperAttunementDisplay.Scripts.Utility.RadioButton";



-- Import scripts that are required for other scripts to work --
import "RunekeeperAttunementDisplay.Scripts.Notification";
import "RunekeeperAttunementDisplay.Scripts.SaveLoad";
import "RunekeeperAttunementDisplay.Scripts.Init";


-- Make sure plugin loads only for rune-keepers --
if (Turbine.Gameplay.LocalPlayer.GetInstance():GetClass() ~= Turbine.Gameplay.Class.RuneKeeper) then
    Scripts.notification("This plugin will only work for rune-keepers! Wrong class detected, therefore the plugin has been disabled.");
    return;
end


-- Import plugin activation --
import "RunekeeperAttunementDisplay.Scripts.Activation";


-- Import color picker --
import "RunekeeperAttunementDisplay.Scripts.ColorPicker";


-- Import main functionality --
import "RunekeeperAttunementDisplay.Scripts.Main";
import "RunekeeperAttunementDisplay.Scripts.Options";