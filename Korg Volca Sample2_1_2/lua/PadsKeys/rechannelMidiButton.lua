--
-- Called when a modulator value changes
-- @mod   http://ctrlr.org/api/class_ctrlr_modulator.html
-- @value    new numeric value of the modulator
--
rechannelMidiButton = function(--[[ CtrlrModulator --]] mod, --[[ number --]] value, --[[ number --]] source)

    local rechannelInput = mod:getValue()

    if rechannelInput == 1 then
        panel:setProperty("panelMidiThruD2D",0,false)
    else
        panel:setProperty("panelMidiThruD2D",1,false)
    end

end