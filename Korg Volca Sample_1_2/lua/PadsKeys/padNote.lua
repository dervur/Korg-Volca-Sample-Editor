--
-- Called when a modulator value changes
-- @mod   http://ctrlr.org/api/class_ctrlr_modulator.html
-- @value    new numeric value of the modulator
--
padNote = function(--[[ CtrlrModulator --]] mod, --[[ number --]] value, --[[ number --]] source)
    
    -- Init variables for MIDI message for note on and note off
    local noteOn = "9a"
    local noteOff = "8a"
    
    -- Get the name of the combo box that was selected
    local n=L(mod:getName())
    -- Table for pad notes
    pad_notes = {
    ["PadNote-1"] = "3C",
    ["PadNote-2"] = "3D",
    ["PadNote-3"] = "3E",
    ["PadNote-4"] = "3F",
    ["PadNote-5"] = "40",
    ["PadNote-6"] = "41",
    ["PadNote-7"] = "42",
    ["PadNote-8"] = "43",
    ["PadNote-9"] = "44",
    ["PadNote-10"] = "45",
    }

    -- Init note variable
    local note = "46"

    -- Set the correct note based on which pad has been pressed
    for k,v in pairs(pad_notes)do
	    if k==n then
            note = v;
        end
    end

    -- Set velocity to 100
    vel = "64";

        -- Create MIDI string
    local midiString = noteOn.." "..note.." "..vel;
    console(midiString)
    -- Create MIDI memory block
    local messageBlock = MemoryBlock(midiString)

    -- Create MIDI message for note On
    local messageOn = CtrlrMidiMessage(messageBlock:toHexString(1))

    -- Repeat to create MIDI message for note Off
    midiString = noteOff.." "..note.." "..vel;
    messageBlock = MemoryBlock(midiString)
    local messageOff = CtrlrMidiMessage(messageBlock:toHexString(1))

    -- Set channels 11
    messageOn:setChannel(11)
    messageOff:setChannel(11)

    -- Send MIDI messages
    panel:sendMidiMessageNow(messageOn)
    panel:sendMidiMessageNow(messageOff)
    

end