function loadPreset(--[[ CtrlrModulator --]] mod, --[[ number --]] value, --[[ number --]] source)
	
	if source==4 then -- should stop this code running on start
	
        --Get name of the button that was pressed
	    local n=L(mod:getName())
        console(n.." pressed")
        
        -- Dialog title and extension
        local title = "Select Volca Sample's part preset..."
        local ext = "*.kvlsp" 

        if n == "Load_Global" then
            title = "Load Volca Sample preset..."
            ext = "*.kvlsg"
        end

        if lastFilePath ~= nil then
            local path = lastFilePath
	        file = utils.openFileWindow(
                 title,  
                 File(path),
                 ext, 
                 true
            )
        else
            file = utils.openFileWindow(
                 title, 
                 File.getSpecialLocation(File.userHomeDirectory), 
                 ext, 
                 true
            )
        end

	    local hexData = MemoryBlock()

	    -- If file exists, then proceed
	    if file:existsAsFile() then
		    hexData = MemoryBlock(file:getSize())
		    file:loadFileAsData(hexData)
	    else
		    return
	    end
        

        local dec_data = {}
	    -- If the file is not the right size than there is a mistake
	    if (file:getSize() == 151) and n == "Load_Global" then
			-- Convert hex data into table
			local data = hex_to_table(hexData:toHexString(1))
			-- Convert hex to decimal number
			for i, v in ipairs(data) do
				dec_data[i] = tonumber(v,16)
			end
			setPanelData(dec_data)
			filename = string.gsub(file:getFileName(), "(.+)%.%w+$", "%1")
			panel:getComponent("Preset_Name_Global"):setPropertyString("uiLabelText", filename)
            panel:getComponent("Preset_Name_Part-1"):setPropertyString("uiLabelText", filename)
            panel:getComponent("Preset_Name_Part-2"):setPropertyString("uiLabelText", filename)
            panel:getComponent("Preset_Name_Part-3"):setPropertyString("uiLabelText", filename)
            panel:getComponent("Preset_Name_Part-4"):setPropertyString("uiLabelText", filename)
            panel:getComponent("Preset_Name_Part-5"):setPropertyString("uiLabelText", filename)
            panel:getComponent("Preset_Name_Part-6"):setPropertyString("uiLabelText", filename)
            panel:getComponent("Preset_Name_Part-7"):setPropertyString("uiLabelText", filename)
            panel:getComponent("Preset_Name_Part-8"):setPropertyString("uiLabelText", filename)
            panel:getComponent("Preset_Name_Part-9"):setPropertyString("uiLabelText", filename)
            panel:getComponent("Preset_Name_Part-10"):setPropertyString("uiLabelText", filename)
		    
		elseif (file:getSize() == 15) then
		    -- Convert hex data into table
		    local data = hex_to_table(hexData:toHexString(1))
            -- Convert hex to decimal number
            for i, v in ipairs(data) do
                dec_data[i] = tonumber(v,16)
            end

			if n=="Load_Part-1" then
				-- Call function to set values in the VST
				setPartData(dec_data,1)
				-- Get filename and change extension
				filename = string.gsub(file:getFileName(), "(.+)%.%w+$", "%1")
				-- Set filename in the LCD screen
				panel:getComponent("Preset_Name_Part-1"):setPropertyString("uiLabelText", filename)
			elseif n == "Load_Part-2" then
				setPartData(dec_data,2)
				filename = string.gsub(file:getFileName(), "(.+)%.%w+$", "%1")
				panel:getComponent("Preset_Name_Part-2"):setPropertyString("uiLabelText", filename)
			elseif n == "Load_Part-3" then
				setPartData(dec_data,3)
				filename = string.gsub(file:getFileName(), "(.+)%.%w+$", "%1")
				panel:getComponent("Preset_Name_Part-3"):setPropertyString("uiLabelText", filename)
			elseif n == "Load_Part-4" then
				setPartData(dec_data,4)
				filename = string.gsub(file:getFileName(), "(.+)%.%w+$", "%1")
				panel:getComponent("Preset_Name_Part-4"):setPropertyString("uiLabelText", filename)
			elseif n == "Load_Part-5" then
				setPartData(dec_data,5)
				filename = string.gsub(file:getFileName(), "(.+)%.%w+$", "%1")
				panel:getComponent("Preset_Name_Part-5"):setPropertyString("uiLabelText", filename)
			elseif n == "Load_Part-6" then
				setPartData(dec_data,6)
				filename = string.gsub(file:getFileName(), "(.+)%.%w+$", "%1")
				panel:getComponent("Preset_Name_Part-6"):setPropertyString("uiLabelText", filename)
			elseif n == "Load_Part-7" then
				setPartData(dec_data,7)
				filename = string.gsub(file:getFileName(), "(.+)%.%w+$", "%1")
				panel:getComponent("Preset_Name_Part-7"):setPropertyString("uiLabelText", filename)
			elseif n == "Load_Part-8" then
				setPartData(dec_data,8)
				filename = string.gsub(file:getFileName(), "(.+)%.%w+$", "%1")
				panel:getComponent("Preset_Name_Part-8"):setPropertyString("uiLabelText", filename)
			elseif n == "Load_Part-9" then
				setPartData(dec_data,9)
				filename = string.gsub(file:getFileName(), "(.+)%.%w+$", "%1")
				panel:getComponent("Preset_Name_Part-9"):setPropertyString("uiLabelText", filename)
			elseif n == "Load_Part-10" then
				setPartData(dec_data,10)
				filename = string.gsub(file:getFileName(), "(.+)%.%w+$", "%1")
				panel:getComponent("Preset_Name_Part-10"):setPropertyString("uiLabelText", filename)
			else
				utils.warnWindow("Warning", "An error occured, operation cancelled")
			end
		else
			utils.warnWindow("Warning", "Wrong file size, operation cancelled")
	    end

		-- Save last browsed directory path
		if file:existsAsFile() then
			local sLastFileFullPath = file:getFullPathName() -- get the absolute path+filename from dialog box
			local sLastFileName = file:getFileName() -- get the name from dialog
			local sLastFileNameLen = string.len(sLastFileName) -- count the number of caracters in the name from dialog
			lastFilePath = string.sub(sLastFileFullPath, 0, -tonumber(sLastFileNameLen) - 1)
		end
		
    end
end