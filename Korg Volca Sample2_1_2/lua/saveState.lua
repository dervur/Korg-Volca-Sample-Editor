--
-- Called when data needs saving
--
saveState = function(--[[ ValueTree --]]stateData)

    if  lastFilePath ~= nil then
        stateData:setProperty("UserLastPath", lastFilePath, nil)
    end

end