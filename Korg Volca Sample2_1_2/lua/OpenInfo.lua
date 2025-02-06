function OpenInfo()
    modalWindow = AlertWindow("Korg Volca Sample 2 Controller (beta x.2.5)", "KorgTM and Volca SampleTM are trademarks of Korg, Inc., which retains all rights to the names and logos. \n The app was developed in Roman Kubiak's CtrlrX by Samuele Martinelli/Vur.", AlertWindow.NoIcon)
	modalWindow:addTextBlock("This controller app/VST includes original controls as per MIDI chart. It only works in multi-channel mode. This is a beta version and it hasn't been tested by the creator with a Volca Sample 2.")
    modalWindow:addTextBlock("To give a donation to Vur: https://tinyurl.com/vurdonation \n You can contact Vur on reddit at u/der_vur.")

    modalWindow:addButton("    OK    ", 1, KeyPress(KeyPress.returnKey),KeyPress())
    
    ret = modalWindow:runModalLoop()

    if ret == 1 then

    end

    modalWindow:setVisible (false)

end