function OpenInfo()
    modalWindow = AlertWindow("Korg Volca Sample Controller ver. 1.2.5", "KorgTM and Volca SampleTM are trademarks of Korg, Inc., which retains all rights to the names and logos. \n The app was developed in Roman Kubiak's CtrlrX by Samuele Martinelli/Vur.", AlertWindow.NoIcon)
	modalWindow:addTextBlock("This controller app/VST includes original controls and the ones added by Pajen's unofficial firmware version 0.7 (in italics). \n To make sure all the Pajen's features are enabled, once installed the firmware turn the Volca Sample on while holding the FUNC button. Make sure step buttons 9 and 10 are lit. Press REC to save the changes.")
    modalWindow:addTextBlock("To give a donation to Vur: https://tinyurl.com/vurdonation \n You can contact Vur on reddit at u/der_vur.")

    modalWindow:addButton("    OK    ", 1, KeyPress(KeyPress.returnKey),KeyPress())
    
    ret = modalWindow:runModalLoop()

    if ret == 1 then

    end

    modalWindow:setVisible (false)

end