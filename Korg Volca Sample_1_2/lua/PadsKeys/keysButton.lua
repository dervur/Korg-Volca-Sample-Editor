--
-- Called when a modulator value changes
-- @mod   http://ctrlr.org/api/class_ctrlr_modulator.html
-- @value    new numeric value of the modulator
--
keysButton = function(--[[ CtrlrModulator --]] mod, --[[ number --]] value, --[[ number --]] source)

    if source==4 then
        local n=L(mod:getName())
        local p = panel:getModulatorByName(n):getValue()
	    local t={}
        t["button_keys"] = 0
        t["button_pads"] = 1

        -- Ensure that only either pads or keys is on at one time, and that one of the two is always on
        if p==1 then
            for k,v in pairs(t)do
	            if k~=n then
                    p = panel:getModulatorByName(k):getValue()
                    if p==1 then
			            panel:getModulatorByName(k):setValue(0, true)
		                console(k.." was set to zero")
                    end
                end
	        end
        else
            -- This ensures that always one is ON
            panel:getModulatorByName(n):setValue(1, true)
            console(n.." was set to one")
        end
    
    console('----------------------------')

    
    local pads = panel:getModulatorByName("button_pads"):getValue()
    local keys = panel:getModulatorByName("button_keys"):getValue()
    --local keyboard = 

    if pads == 1 then
        -- Hide keyboard parts
        panel:getModulatorByName("Keyboard"):getComponent():setProperty("componentVisibility", 0, false)
        panel:getModulatorByName("ChannelCombo"):getComponent():setProperty("componentVisibility", 0, false)
        
        -- Set channel to 11 (in pajen it is the channel for multi-trigger
        panel:setProperty("panelMidiOutputChannelDevice", 11, false)

        -- Show pads parts
        panel:getModulatorByName("Channel11"):getComponent():setProperty("componentVisibility", 1, false)
        panel:getModulatorByName("pads_group"):getComponent():setProperty("componentVisibility", 1, false)
    elseif keys == 1 then
        -- Show Keyboard parts
        panel:getModulatorByName("Keyboard"):getComponent():setProperty("componentVisibility", 1, false)
        panel:getModulatorByName("ChannelCombo"):getComponent():setProperty("componentVisibility", 1, false)

        -- Hide pads parts
        panel:getModulatorByName("Channel11"):getComponent():setProperty("componentVisibility", 0, false)
        panel:getModulatorByName("pads_group"):getComponent():setProperty("componentVisibility", 0, false)

        local channel = L(panel:getModulator("ChannelCombo"):getComponent():getComponentText())

        if channel=="Ch. 1 (Part 1)" then
            panel:setProperty("panelMidiOutputChannelDevice", 1, false)
        elseif channel=="Ch. 2 (Part 2)" then
            panel:setProperty("panelMidiOutputChannelDevice", 2, false)
        elseif channel=="Ch. 3 (Part 3)" then
            panel:setProperty("panelMidiOutputChannelDevice", 3, false)
        elseif channel=="Ch. 4 (Part 4)" then
            panel:setProperty("panelMidiOutputChannelDevice", 4, false)
        elseif channel=="Ch. 5 (Part 5)" then
            panel:setProperty("panelMidiOutputChannelDevice", 5, false)
        elseif channel=="Ch. 6 (Part 6)" then
            panel:setProperty("panelMidiOutputChannelDevice", 6, false)
        elseif channel=="Ch. 7 (Part 7)" then
            panel:setProperty("panelMidiOutputChannelDevice", 7, false)
        elseif channel=="Ch. 8 (Part 8)" then
            panel:setProperty("panelMidiOutputChannelDevice", 8, false)
        elseif channel=="Ch. 9 (Part 9)" then
            panel:setProperty("panelMidiOutputChannelDevice", 9, false)
        elseif channel=="Ch. 10 (Part 10)" then
            panel:setProperty("panelMidiOutputChannelDevice", 10, false)
        else
            return
        end

    end

    --if keys==1 then
      --  panel:getPanelEditor():setProperty("uiPanelCanvasRectangle","0 0 820 465",true)
      --  panel:getPanelEditor():setProperty("uiViewPortMinHeight",465,true)
      --  panel:getPanelEditor():setProperty("uiViewPortMaxHeight",698,true)
    --elseif keys==0 then
      --  panel:getPanelEditor():setProperty("uiPanelCanvasRectangle","0 0 820 380",true)
      --  panel:getPanelEditor():setProperty("uiViewPortMinHeight",380,true)
      --  panel:getPanelEditor():setProperty("uiViewPortMaxHeight",570,true)
    --end

    end -- source ==4 (user clicked on a button - not lua generated
end