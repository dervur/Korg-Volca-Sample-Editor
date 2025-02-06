--
-- Called when the current tab in an uiTabs component is changed
--

tabChanged = function(--[[ CtrlrModulator --]] mod, --[[ number --]] tabIndex)

    -- Set part from the tab in the part select
    panel:getModulatorByName("Part Select"):setValue(tabIndex+1, true)

end