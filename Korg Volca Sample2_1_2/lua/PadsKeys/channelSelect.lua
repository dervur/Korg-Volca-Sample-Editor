function channelSelect(--[[ CtrlrModulator --]] mod, --[[ number --]] value, --[[ number --]] source)
	--local n=L(mod:getName())
    local channel = L(panel:getModulator("ChannelCombo"):getComponent():getComponentText())
    console(channel.." is selected")

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