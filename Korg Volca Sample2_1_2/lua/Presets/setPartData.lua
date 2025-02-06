function setPartData(data, part)

    -- Create a table with modulator names and numbers set in relation to the index of the getPanelData function
    local modulator = {}
    if part==1 then
        modulator["Sample Part-1"] = 1
        modulator["Sample Hi Cut Part-1"] = 2
        modulator["Sample Start Point Part-1"] = 3
        modulator["Sample Length Part-1"] = 4
        modulator["Reverse Part-1"] = 5
        modulator["Loop Part-1"] = 6
        modulator["Pitch Speed Part-1"] = 7
        modulator["Pitch Eg Int Part-1"] = 8
        modulator["Pitch Attack Part-1"] = 9
        modulator["Pitch Decay Part-1"] = 10
        modulator["Amp Level Part-1"] = 11
        modulator["Amp Pan Part-1"] = 12
        modulator["Amp Attack Part-1"] = 13
        modulator["Amp Decay Part-1"] = 14
        modulator["Reverb Part-1"] = 15
    elseif part == 2 then
        modulator["Sample Part-2"] = 1
        modulator["Sample Hi Cut Part-2"] = 2
        modulator["Sample Start Point Part-2"] = 3
        modulator["Sample Length Part-2"] = 4
        modulator["Reverse Part-2"] = 5
        modulator["Loop Part-2"] = 6
        modulator["Pitch Speed Part-2"] = 7
        modulator["Pitch Eg Int Part-2"] = 8
        modulator["Pitch Attack Part-2"] = 9
        modulator["Pitch Decay Part-2"] = 10
        modulator["Amp Level Part-2"] = 11
        modulator["Amp Pan Part-2"] = 12
        modulator["Amp Attack Part-2"] = 13
        modulator["Amp Decay Part-2"] = 14
        modulator["Reverb Part-2"] = 15
    elseif part == 3 then
        modulator["Sample Part-3"] = 1
        modulator["Sample Hi Cut Part-3"] = 2
        modulator["Sample Start Point Part-3"] = 3
        modulator["Sample Length Part-3"] = 4
        modulator["Reverse Part-3"] = 5
        modulator["Loop Part-3"] = 6
        modulator["Pitch Speed Part-3"] = 7
        modulator["Pitch Eg Int Part-3"] = 8
        modulator["Pitch Attack Part-3"] = 9
        modulator["Pitch Decay Part-3"] = 10
        modulator["Amp Level Part-3"] = 11
        modulator["Amp Pan Part-3"] = 12
        modulator["Amp Attack Part-3"] = 13
        modulator["Amp Decay Part-3"] = 14
        modulator["Reverb Part-3"] = 15
    elseif part == 4 then
        modulator["Sample Part-4"] = 1
        modulator["Sample Hi Cut Part-4"] = 2
        modulator["Sample Start Point Part-4"] = 3
        modulator["Sample Length Part-4"] = 4
        modulator["Reverse Part-4"] = 5
        modulator["Loop Part-4"] = 6
        modulator["Pitch Speed Part-4"] = 7
        modulator["Pitch Eg Int Part-4"] = 8
        modulator["Pitch Attack Part-4"] = 9
        modulator["Pitch Decay Part-4"] = 10
        modulator["Amp Level Part-4"] = 11
        modulator["Amp Pan Part-4"] = 12
        modulator["Amp Attack Part-4"] = 13
        modulator["Amp Decay Part-4"] = 14
        modulator["Reverb Part-4"] = 15
    elseif part == 5 then
        modulator["Sample Part-5"] = 1
        modulator["Sample Hi Cut Part-5"] = 2
        modulator["Sample Start Point Part-5"] = 3
        modulator["Sample Length Part-5"] = 4
        modulator["Reverse Part-5"] = 5
        modulator["Loop Part-5"] = 6
        modulator["Pitch Speed Part-5"] = 7
        modulator["Pitch Eg Int Part-5"] = 8
        modulator["Pitch Attack Part-5"] = 9
        modulator["Pitch Decay Part-5"] = 10
        modulator["Amp Level Part-5"] = 11
        modulator["Amp Pan Part-5"] = 12
        modulator["Amp Attack Part-5"] = 13
        modulator["Amp Decay Part-5"] = 14
        modulator["Reverb Part-5"] = 15
    elseif part == 6 then
        modulator["Sample Part-6"] = 1
        modulator["Sample Hi Cut Part-6"] = 2
        modulator["Sample Start Point Part-6"] = 3
        modulator["Sample Length Part-6"] = 4
        modulator["Reverse Part-6"] = 5
        modulator["Loop Part-6"] = 6
        modulator["Pitch Speed Part-6"] = 7
        modulator["Pitch Eg Int Part-6"] = 8
        modulator["Pitch Attack Part-6"] = 9
        modulator["Pitch Decay Part-6"] = 10
        modulator["Amp Level Part-6"] = 11
        modulator["Amp Pan Part-6"] = 12
        modulator["Amp Attack Part-6"] = 13
        modulator["Amp Decay Part-6"] = 14
        modulator["Reverb Part-6"] = 15
    elseif part == 7 then
        modulator["Sample Part-7"] = 1
        modulator["Sample Hi Cut Part-7"] = 2
        modulator["Sample Start Point Part-7"] = 3
        modulator["Sample Length Part-7"] = 4
        modulator["Reverse Part-7"] = 5
        modulator["Loop Part-7"] = 6
        modulator["Pitch Speed Part-7"] = 7
        modulator["Pitch Eg Int Part-7"] = 8
        modulator["Pitch Attack Part-7"] = 9
        modulator["Pitch Decay Part-7"] = 10
        modulator["Amp Level Part-7"] = 11
        modulator["Amp Pan Part-7"] = 12
        modulator["Amp Attack Part-7"] = 13
        modulator["Amp Decay Part-7"] = 14
        modulator["Reverb Part-7"] = 15
    elseif part == 8 then
        modulator["Sample Part-8"] = 1
        modulator["Sample Hi Cut Part-8"] = 2
        modulator["Sample Start Point Part-8"] = 3
        modulator["Sample Length Part-8"] = 4
        modulator["Reverse Part-8"] = 5
        modulator["Loop Part-8"] = 6
        modulator["Pitch Speed Part-8"] = 7
        modulator["Pitch Eg Int Part-8"] = 8
        modulator["Pitch Attack Part-8"] = 9
        modulator["Pitch Decay Part-8"] = 10
        modulator["Amp Level Part-8"] = 11
        modulator["Amp Pan Part-8"] = 12
        modulator["Amp Attack Part-8"] = 13
        modulator["Amp Decay Part-8"] = 14
        modulator["Reverb Part-8"] = 15
    elseif part == 9 then
        modulator["Sample Part-9"] = 1
        modulator["Sample Hi Cut Part-9"] = 2
        modulator["Sample Start Point Part-9"] = 3
        modulator["Sample Length Part-9"] = 4
        modulator["Reverse Part-9"] = 5
        modulator["Loop Part-9"] = 6
        modulator["Pitch Speed Part-9"] = 7
        modulator["Pitch Eg Int Part-9"] = 8
        modulator["Pitch Attack Part-9"] = 9
        modulator["Pitch Decay Part-9"] = 10
        modulator["Amp Level Part-9"] = 11
        modulator["Amp Pan Part-9"] = 12
        modulator["Amp Attack Part-9"] = 13
        modulator["Amp Decay Part-9"] = 14
        modulator["Reverb Part-9"] = 15
    elseif part == 10 then
        modulator["Sample Part-10"] = 1
        modulator["Sample Hi Cut Part-10"] = 2
        modulator["Sample Start Point Part-10"] = 3
        modulator["Sample Length Part-10"] = 4
        modulator["Reverse Part-10"] = 5
        modulator["Loop Part-10"] = 6
        modulator["Pitch Speed Part-10"] = 7
        modulator["Pitch Eg Int Part-10"] = 8
        modulator["Pitch Attack Part-10"] = 9
        modulator["Pitch Decay Part-10"] = 10
        modulator["Amp Level Part-10"] = 11
        modulator["Amp Pan Part-10"] = 12
        modulator["Amp Attack Part-10"] = 13
        modulator["Amp Decay Part-10"] = 14
        modulator["Reverb Part-10"] = 15
    end    

    -- Set values
	for k,v in pairs(modulator)do
        panel:getModulatorByName(k):setValue(data[v], true)
	end

end