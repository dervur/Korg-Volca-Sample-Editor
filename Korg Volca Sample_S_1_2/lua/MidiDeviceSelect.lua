function MidiDeviceSelect()

    local myInputDevice = panel:getProperty("panelMidiInputDevice")
    local deviceIdInput = 0
    local myControllerDevice = panel:getProperty("panelMidiControllerDevice")
    local deviceIdController = 0
    local myOutputDevice = panel:getProperty("panelMidiOutputDevice")
    local deviceIdOutput = 0

	saMidiInputDevices = StringArray()
    saMidiInputDevices:set(0, "None")
	for i=1,(utils.getMidiInputDevices():size()) do
		saMidiInputDevices:set(i, utils.getMidiInputDevices():get(i-1))
		
		if utils.getMidiInputDevices():get(i-1) == myInputDevice then
            deviceIdInput = i-1
        end -- end if
	end

	saMidiControllerDevices = StringArray()
	for i=0,(utils.getMidiInputDevices():size()) do
		saMidiControllerDevices:set(i, utils.getMidiInputDevices():get(i))
		
		if utils.getMidiInputDevices():get(i) == myControllerDevice then
            deviceIdController = i
        end -- end if
	end

	saMidiOutputDevices = StringArray()
    saMidiOutputDevices:set(0, "None")
	for i=1,(utils.getMidiOutputDevices():size()) do
        if (utils.getMidiOutputDevices():get(i-1))~="Microsoft GS Wavetable Synth" then
		    saMidiOutputDevices:set(i, utils.getMidiOutputDevices():get(i-1))
            console(utils.getMidiOutputDevices():get(i-1))
		    if utils.getMidiOutputDevices():get(i-1) == myOutputDevice then
                deviceIdOutput = i-1
            end -- end if
        end
	end


--	Create Array for the Preset Bank DropDown

	modalWindow = AlertWindow("MIDI I/O Devices", "Select your controller and output devices. \n Never set In and Out to the same to avoid loops.", AlertWindow.NoIcon)
	modalWindow:addButton("    OK    ", 1, KeyPress(KeyPress.returnKey),KeyPress())
	modalWindow:addButton("Cancel", 0, KeyPress(KeyPress.escapeKey),KeyPress())


	modalWindow:addComboBox ("cmbMidiInputDevices", saMidiInputDevices, "MIDI Input Device")
	--modalWindow:addComboBox ("cmbMidiControllerDevices", saMidiControllerDevices, "MIDI Controller Device [Midi Fighter Twister]")
	modalWindow:addComboBox ("cmbMidiOutputDevices", saMidiOutputDevices, "MIDI Output Device")


	modalWindow:getComboBoxComponent("cmbMidiInputDevices"):setSelectedItemIndex(deviceIdInput, 2)
	--modalWindow:getComboBoxComponent("cmbMidiControllerDevices"):setSelectedItemIndex(deviceControllerInput, 2)
    modalWindow:getComboBoxComponent("cmbMidiOutputDevices"):setSelectedItemIndex(deviceIdOutput, 2)

	ret = modalWindow:runModalLoop()


	if ret == 1 then
		panel:setPropertyString("panelMidiInputDevice",modalWindow:getComboBoxComponent("cmbMidiInputDevices"):getText())
		--panel:setPropertyString("panelMidiControllerDevice",modalWindow:getComboBoxComponent("cmbMidiControllerDevices"):getText())
		panel:setPropertyString("panelMidiOutputDevice",modalWindow:getComboBoxComponent("cmbMidiOutputDevices"):getText())
	end

	modalWindow:setVisible (false)

end -- end f