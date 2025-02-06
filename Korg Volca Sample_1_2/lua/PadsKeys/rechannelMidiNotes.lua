--
-- Called when a panel receives a midi message (does not need to match any modulator mask)
-- @midi   CtrlrMidiMessage object
--

rechannelMidiNotes = function(--[[ CtrlrMidiMessage --]] midi)
    --Get the value of the rechannel button
    local rechannelInput = panel:getModulatorByName("rechannelButton"):getValue()

    if rechannelInput == 1 then
        -- Get the set channel output and convert it from string to number
        local channelOut = tonumber(panel:getProperty("panelMidiOutputChannelDevice"))
        -- Change the channel of the incoming MIDI message to the channel set at the output
        midi:setChannel(channelOut)
        -- Send MIDI message
        panel:sendMidiMessageNow(midi)
    end

end