function sendData(--[[ CtrlrModulator --]] mod, --[[ number --]] value, --[[ number --]] source)
        --Get name of the button that was pressed
	    local n=L(mod:getName())
        console(n.." pressed")
        local data = {}

        if n == "Send_Part-1" then
            data = getPartData(1)
            setPartData(data, 1)
        elseif n == "Send_Part-2" then
            data = getPartData(2)
            setPartData(data, 2)
        elseif n == "Send_Part-3" then
            data = getPartData(3)
            setPartData(data, 3)
        elseif n == "Send_Part-4" then
            data = getPartData(4)
            setPartData(data, 4)
        elseif n == "Send_Part-5" then
            data = getPartData(5)
            setPartData(data, 5)
        elseif n == "Send_Part-6" then
            data = getPartData(6)
            setPartData(data, 6)
        elseif n == "Send_Part-7" then
            data = getPartData(7)
            setPartData(data, 7)
        elseif n == "Send_Part-8" then
            data = getPartData(8)
            setPartData(data, 8)
        elseif n == "Send_Part-9" then
            data = getPartData(9)
            setPartData(data, 9)
        elseif n == "Send_Part-10" then
            data = getPartData(10)
            setPartData(data, 10)
        elseif n == "Send_Global" then
            local reverb_mix = panel:getModulatorByName("Reverb Mix"):getValue()
	        panel:getModulatorByName("Reverb Mix"):setValue(reverb_mix, true)
            data = getPartData(1)
            setPartData(data, 1)
            data = getPartData(2)
            setPartData(data, 2)
            data = getPartData(3)
            setPartData(data, 3)
            data = getPartData(4)
            setPartData(data, 4)
            data = getPartData(5)
            setPartData(data, 5)
            data = getPartData(6)
            setPartData(data, 6)
            data = getPartData(7)
            setPartData(data, 7)
            data = getPartData(8)
            setPartData(data, 8)
            data = getPartData(9)
            setPartData(data, 9)
            data = getPartData(10)
            setPartData(data, 10)
        else
            return
        end
        

end