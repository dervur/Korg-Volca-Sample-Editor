--
-- Called when a modulator value changes
-- @mod   http://ctrlr.org/api/class_ctrlr_modulator.html
-- @value    new numeric value of the modulator
--
changeTab = function(--[[ CtrlrModulator --]] mod, --[[ number --]] value, --[[ number --]] source)

    if source == 4 then
        -- Change tab
        panel:getComponent("PartsTab"):setProperty ("uiTabsCurrentTab", value-1, false)
    end

end