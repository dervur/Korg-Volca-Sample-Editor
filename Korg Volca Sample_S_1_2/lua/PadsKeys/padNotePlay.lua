--
-- Called when a modulator value changes
-- @mod   http://ctrlr.org/api/class_ctrlr_modulator.html
-- @value    new numeric value of the modulator
--
padNotePlay = function(--[[ CtrlrModulator --]] mod, --[[ number --]] value, --[[ number --]] source)
    
    -- Init variables for MIDI message for note on and note off
    local noteOn = "9a"
    local noteOff = "8a"

    -- Get text of combo box
    local n = L(mod:getComponent():getComponentText())

    -- Table for piano notes
    piano_notes = {
    ["C-2"] = "00",
    ["C#-2"] = "01",
    ["D-2"] = "02",
    ["D#-2"] = "03",
    ["E-2"] = "04",
    ["F-2"] = "05",
    ["F#-2"] = "06",
    ["G-2"] = "07",
    ["G#-2"] = "08",
    ["A-2"] = "09",
    ["A#-2"] = "0A",
    ["B-2"] = "0B",
    ["C-1"] = "0C",
    ["C#-1"] = "0D",
    ["D-1"] = "0E",
    ["D#-1"] = "0F",
    ["E-1"] = "10",
    ["F-1"] = "11",
    ["F#-1"] = "12",
    ["G-1"] = "13",
    ["G#-1"] = "14",
    ["A-1"] = "15",
    ["A#-1"] = "16",
    ["B-1"] = "17",
    ["C0"] = "18",
    ["C#0"] = "19",
    ["D0"] = "1A",
    ["D#0"] = "1B",
    ["E0"] = "1C",
    ["F0"] = "1D",
    ["F#0"] = "1E",
    ["G0"] = "1F",
    ["G#0"] = "20",
    ["A0"] = "21",
    ["A#0"] = "22",
    ["B0"] = "23",
    ["C1"] = "24",
    ["C#1"] = "25",
    ["D1"] = "26",
    ["D#1"] = "27",
    ["E1"] = "28",
    ["F1"] = "29",
    ["F#1"] = "2A",
    ["G1"] = "2B",
    ["G#1"] = "2C",
    ["A1"] = "2D",
    ["A#1"] = "2E",
    ["B1"] = "2F",
    ["C2"] = "30",
    ["C#2"] = "31",
    ["D2"] = "32",
    ["D#2"] = "33",
    ["E2"] = "34",
    ["F2"] = "35",
    ["F#2"] = "36",
    ["G2"] = "37",
    ["G#2"] = "38",
    ["A2"] = "39",
    ["A#2"] = "3A",
    ["B2"] = "3B",
    ["C3"] = "3C",
    ["C#3"] = "3D",
    ["D3"] = "3E",
    ["D#3"] = "3F",
    ["E3"] = "40",
    ["F3"] = "41",
    ["F#3"] = "42",
    ["G3"] = "43",
    ["G#3"] = "44",
    ["A3"] = "45",
    ["A#3"] = "46",
    ["B3"] = "47",
    ["C4"] = "48",
    ["C#4"] = "49",
    ["D4"] = "4A",
    ["D#4"] = "4B",
    ["E4"] = "4C",
    ["F4"] = "4D",
    ["F#4"] = "4E",
    ["G4"] = "4F",
    ["G#4"] = "50",
    ["A4"] = "51",
    ["A#4"] = "52",
    ["B4"] = "53",
    ["C5"] = "54",
    ["C#5"] = "55",
    ["D5"] = "56",
    ["D#5"] = "57",
    ["E5"] = "58",
    ["F5"] = "59",
    ["F#5"] = "5A",
    ["G5"] = "5B",
    ["G#5"] = "5C",
    ["A5"] = "5D",
    ["A#5"] = "5E",
    ["B5"] = "5F",
    ["C6"] = "60",
    ["C#6"] = "61",
    ["D6"] = "62",
    ["D#6"] = "63",
    ["E6"] = "64",
    ["F6"] = "65",
    ["F#6"] = "66",
    ["G6"] = "67",
    ["G#6"] = "68",
    ["A6"] = "69",
    ["A#6"] = "6A",
    ["B6"] = "6B",
    ["C7"] = "6C",
    ["C#7"] = "6D",
    ["D7"] = "6E",
    ["D#7"] = "6F",
    ["E7"] = "70",
    ["F7"] = "71",
    ["F#7"] = "72",
    ["G7"] = "73",
    ["G#7"] = "74",
    ["A7"] = "75",
    ["A#7"] = "76",
    ["B7"] = "77"
    }
    -- Init note variable to C3
    local note = "3C";

    -- Set the correct note based on the combo box value
    for k,v in pairs(piano_notes)do
	    if k==n then
            note = v;
        end
    end
    

    -- Get value of the Play Sound button, init velocity value
    local p = panel:getModulatorByName("padPlayVelocity"):getValue()
    local vel = "00"
    -- If the button is ON, set velocity to max, otherwise to min
    if p==1 then
        vel = "7f";
    else
        vel = "01";
    end
        
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

    -- Create a table with the names of the combo boxes for each note
    combo = {
    ["PadCombo Play Part-1"] = 1,
    ["PadCombo Play Part-2"] = 2,
    ["PadCombo Play Part-3"] = 3,
    ["PadCombo Play Part-4"] = 4,
    ["PadCombo Play Part-5"] = 5,
    ["PadCombo Play Part-6"] = 6,
    ["PadCombo Play Part-7"] = 7,
    ["PadCombo Play Part-8"] = 8,
    ["PadCombo Play Part-9"] = 9,
    ["PadCombo Play Part-10"] = 10
    }

    -- Get the name of the combo box that was selected
    n=L(mod:getName())

    -- Set the correct channel based on the selected combo box for both messages
    for k,v in pairs(combo)do
	    if k==n then
            messageOn:setChannel(v)
            messageOff:setChannel(v)
        end
    end

    -- Send MIDI messages
    panel:sendMidiMessageNow(messageOn)
    panel:sendMidiMessageNow(messageOff)
    

end