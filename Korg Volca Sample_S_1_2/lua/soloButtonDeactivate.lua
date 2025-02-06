-- Called when a solo button is pressed to turn off the others

function soloButtonDeactivate(--[[ CtrlrModulator --]] mod, --[[ number --]] value, --[[ number --]] source)

    if source==4 then -- should stop this code running on start

	    local n=L(mod:getName())
        local p = panel:getModulatorByName(n):getValue()
	    local t={}
        t["Solo Part-1"] = 0
        t["Solo Part-2"] = 1
        t["Solo Part-3"] = 2
        t["Solo Part-4"] = 3
        t["Solo Part-5"] = 4
        t["Solo Part-6"] = 5
        t["Solo Part-7"] = 6
        t["Solo Part-8"] = 7
        t["Solo Part-9"] = 8
        t["Solo Part-10"] = 9

	    console("Selected Value : "..n)

        if p==1 then
            panel:getModulatorByName(n):setValue(0, true)
            console(n.." was set to zero")
	        for k,v in pairs(t)do
		        if k~=n then
                    p = panel:getModulatorByName(k):getValue()
                    if p==1 then
			            panel:getModulatorByName(k):setValue(0, true)
		                console(k.." was set to zero")
                    end
                end
	        end
            --panel:sendMidiMessageNow(CtrlrMidiMessage(MemoryBlock({0xB0, 0x3b, 0x00})))
            panel:getModulatorByName(n):setValue(1, true)
            console(n.." was set to one")
        end
	end

    -- Just using for test to change CC, delete once solved
    --local sample = panel:getModulatorByName("Sample Part-1")
    --local CC = L(mod:getComponent():getPropertyString("midiMessageCtrlrNumber"))
    --console("CC"..CC)
    --panel:getModulatorByName("Sample Part-1"):getComponent():setProperty("midiMessageCtrlrNumber", 5,false)
    --sample:getMidiMessage():setProperty("midiMessageCtrlrNumber", 5,false)
    
    console('----------------------------')
end -- source ==4 (user clicked on a button - not lua generated


  


