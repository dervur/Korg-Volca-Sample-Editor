--
-- Called when the ViewPort is resized
--

ViewPortRezisedCbk = function(--[[ CtrlrPanelEditor --]] panel)

    canvasWidth = panel:getCanvas():getWidth()
    canvasHeight = panel:getCanvas():getHeight()
    viewportWidth = panel:getPanelEditor():getWidth()
    viewportHeight = panel:getPanelEditor():getHeight()
    canvasRatio = canvasWidth/canvasHeight
    zoomWidthRatio = viewportWidth/canvasWidth
    zoomHeightRatio = viewportHeight/canvasHeight
    
    if canvasWidth >= canvasHeight then
        zoomRatio = zoomWidthRatio
    else
        zoomRatio = zoomHeightRatio
    end
    
    panel:getPanelEditor():setProperty("uiPanelZoom",zoomRatio,true)
    
    end