function savePreset(--[[ CtrlrModulator --]] mod, --[[ number --]] value, --[[ number --]] source)
	if source==4 then -- should stop this code running on start
	
        --Get name of the button that was pressed
	    local n=L(mod:getName())
        console(n.." pressed")
    	-- Default filename
	    local cPresName = "part"
        
	    -- Dialog title and extension
        local title = "Save Volca Sample's part preset to file..."
        local ext = "*.kvlsp" 

        if n == "Save_Global" then
            title = "Save Volca Sample's part preset to file..."
            ext = "*.kvlsg"
        end

        if lastFilePath ~= nil then
            local path = lastFilePath
	        file = utils.saveFileWindow(
                 title,  
                 File(path),
                 ext, 
                 true
            )
        else
            file = utils.saveFileWindow(
                 title, 
                 File.getSpecialLocation(File.userHomeDirectory), 
                 ext, 
                 true
            )
        end

        if n == "Save_Part-1" then
			file:replaceWithData(MemoryBlock(getPartData(1)))
		elseif n == "Save_Part-2" then
			file:replaceWithData(MemoryBlock(getPartData(2)))
		elseif n == "Save_Part-3" then
			file:replaceWithData(MemoryBlock(getPartData(3)))
		elseif n == "Save_Part-4" then
			file:replaceWithData(MemoryBlock(getPartData(4)))
		elseif n == "Save_Part-5" then
			file:replaceWithData(MemoryBlock(getPartData(5)))
		elseif n == "Save_Part-6" then
			file:replaceWithData(MemoryBlock(getPartData(6)))
		elseif n == "Save_Part-7" then
			file:replaceWithData(MemoryBlock(getPartData(7)))
		elseif n == "Save_Part-8" then
			file:replaceWithData(MemoryBlock(getPartData(8)))
		elseif n == "Save_Part-9" then
			file:replaceWithData(MemoryBlock(getPartData(9)))
		elseif n == "Save_Part-10" then
			file:replaceWithData(MemoryBlock(getPartData(10)))
		elseif n == "Save_Global" then
			file:replaceWithData(MemoryBlock(getPanelData()))
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
