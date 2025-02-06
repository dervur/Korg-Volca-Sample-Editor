--
-- Called when data is restored
--
loadState = function(--[[ ValueTree --]] stateData)

    if  stateData:hasProperty("UserLastPath") and string.len(stateData:getProperty("UserLastPath")) > 0 then
        lastFilePath = stateData:getProperty("UserLastPath")
   end

end