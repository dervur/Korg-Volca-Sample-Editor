--
-- Called when the panel has finished loading
--
-- @type the type of instance beeing started, types available in the CtrlrPanel
-- class as enum
--
-- InstanceSingle
-- InstanceMulti
-- InstanceSingleRestriced
-- InstanceSingleEngine
-- InstanceMultiEngine
-- InstanceSingleRestrictedEngine
--
finishLoad = function(--[[ CtrlrInstance --]] type)

    -- Set keys
    panel:getModulatorByName("button_keys"):setValue(1, true)
    panel:getModulatorByName("button_pads"):setValue(0, true)

    -- Show Keyboard parts
    panel:getModulatorByName("Keyboard"):getComponent():setProperty("componentVisibility", 1, false)
    panel:getModulatorByName("ChannelCombo"):getComponent():setProperty("componentVisibility", 1, false)

    -- Hide pads parts
    panel:getModulatorByName("Channel11"):getComponent():setProperty("componentVisibility", 0, false)
    panel:getModulatorByName("pads_group"):getComponent():setProperty("componentVisibility", 0, false)

    local channel = L(panel:getModulator("ChannelCombo"):getComponent():getComponentText())
    if channel=="Ch. 1 (Part 1)" then
        panel:setProperty("panelMidiOutputChannelDevice", 1, false)
    elseif channel=="Ch. 2 (Part 2)" then
        panel:setProperty("panelMidiOutputChannelDevice", 2, false)
    elseif channel=="Ch. 3 (Part 3)" then
        panel:setProperty("panelMidiOutputChannelDevice", 3, false)
    elseif channel=="Ch. 4 (Part 4)" then
        panel:setProperty("panelMidiOutputChannelDevice", 4, false)
    elseif channel=="Ch. 5 (Part 5)" then
        panel:setProperty("panelMidiOutputChannelDevice", 5, false)
    elseif channel=="Ch. 6 (Part 6)" then
        panel:setProperty("panelMidiOutputChannelDevice", 6, false)
    elseif channel=="Ch. 7 (Part 7)" then
        panel:setProperty("panelMidiOutputChannelDevice", 7, false)
    elseif channel=="Ch. 8 (Part 8)" then
        panel:setProperty("panelMidiOutputChannelDevice", 8, false)
    elseif channel=="Ch. 9 (Part 9)" then
        panel:setProperty("panelMidiOutputChannelDevice", 9, false)
    elseif channel=="Ch. 10 (Part 10)" then
        panel:setProperty("panelMidiOutputChannelDevice", 10, false)
    else
        return
    end


end